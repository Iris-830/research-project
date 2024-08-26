# --------------------------------------------------------
library(caret)
library(rstanarm)
library(forcats)

# 将 experienced_fistula 转换为因子
data1$experienced_fistula <- as_factor(data1$experienced_fistula)

# 使用 caret 包中的 downSample 函数进行下采样
set.seed(123)  # 设置随机种子以保证结果可重复
data_downsampled <-
  downSample(
    x = data1 %>% select(-experienced_fistula),
    y = data1$experienced_fistula,
    yname = "experienced_fistula"
  )

# 确保权重列在合适的范围内（例如，缩放到 [0, 1] 范围内）
data_downsampled$V005 <- (data_downsampled$V005 - min(data_downsampled$V005)) / (max(data_downsampled$V005) - min(data_downsampled$V005))

# 下采样后的目标变量从1和2改为0和1
data_downsampled$experienced_fistula <- as.numeric(data_downsampled$experienced_fistula) - 1

# 确保所有列都是数值类型
data_downsampled <- data_downsampled %>%
  mutate(across(everything(), as.numeric))

# 确保 experienced_fistula 是因子变量
data_downsampled$experienced_fistula <- as.factor(data_downsampled$experienced_fistula)

# 数据标准化
preProcValues <- preProcess(
  data_downsampled %>% select(-experienced_fistula, -V005),
  method = c("center", "scale")
)
data_normalized <- bind_cols(predict(preProcValues, data_downsampled %>% select(-experienced_fistula, -V005)), data_downsampled %>% select(experienced_fistula, V005))

# 分割数据集为训练集和测试集
set.seed(123)
train_index <- createDataPartition(data_normalized$experienced_fistula, p = 0.8, list = FALSE)
train_data <- data_normalized[train_index, ]
test_data <- data_normalized[-train_index, ]

# 确保 experienced_fistula 是因子变量并且标签一致
train_data$experienced_fistula <- factor(train_data$experienced_fistula, levels = c(0, 1), labels = c("No", "Yes"))
test_data$experienced_fistula <- factor(test_data$experienced_fistula, levels = c(0, 1), labels = c("No", "Yes"))

# 添加权重列
train_data$weights <- train_data$V005
test_data$weights <- test_data$V005

# 设置贝叶斯模型
stan_model <- stan_glm(
  experienced_fistula ~ . - V005 - weights,
  data = train_data,
  family = binomial(link = "logit"),
  prior = normal(0, 10),
  prior_intercept = normal(0, 10),
  weights = train_data$weights,
  chains = 4,
  iter = 2000,
  warmup = 1000,
  control = list(adapt_delta = 0.95)
)

# 生成预测
predictions <- posterior_predict(stan_model, newdata = test_data, draws = 1000)
predicted_labels <- apply(predictions, 2, function(x) ifelse(mean(x) > 0.5, "Yes", "No"))
predicted_labels <- factor(predicted_labels, levels = c("No", "Yes"))

# 检查预测标签和实际标签的分布
table(predicted_labels)
table(test_data$experienced_fistula)

# 确保预测标签和实际标签的因子级别一致
test_data$experienced_fistula <- factor(test_data$experienced_fistula, levels = c("No", "Yes"))

# 计算混淆矩阵
confusion_matrix <- confusionMatrix(predicted_labels, test_data$experienced_fistula)
print(confusion_matrix)




# 查看模型的摘要
summary(stan_model)

# 可视化变量的后验分布
plot(stan_model, pars = "beta")

# 检查变量之间的关系
pairs(stan_model, pars = c("(Intercept)", "age", "education", "distance", "wealth"))

# 查看具体变量的后验分布
marginal_effects(stan_model)

# 使用 ggplot2 可视化后验分布
posterior_samples <- as.data.frame(as.matrix(stan_model))
ggplot(posterior_samples, aes(x = age, y = education)) +
  geom_point(alpha = 0.5) +
  labs(title = "Posterior Distribution of Age and Education Coefficients",
       x = "Age Coefficient",
       y = "Education Coefficient")

# 提取后验样本并可视化
posterior_samples <- as.matrix(stan_model)
mcmc_areas(posterior_samples, pars = names(coef(stan_model)))

# 创建新数据进行边际效应预测
new_data <- data.frame(
  age = seq(min(data1$age), max(data1$age), length.out = 100),
  education = mean(data1$education),
  distance = mean(data1$distance),
  age_sex = mean(data1$age_sex),
  wealth = mean(data1$wealth),
  residence = mean(data1$residence),
  occupation = mean(data1$occupation),
  number_birth = mean(data1$number_birth),
  delivery_category = mean(data1$delivery_category),
  contraception_use = mean(data1$contraception_use),
  religion = mean(data1$religion),
  V005 = mean(data1$V005)  # 添加V005列
)

# 预测新数据
predictions <- posterior_predict(stan_model, newdata = new_data)

# 计算边际效应
marginal_effects <- apply(predictions, 2, mean)

# 可视化边际效应
new_data$predictions <- marginal_effects
ggplot(new_data, aes(x = age, y = predictions)) +
  geom_line() +
  labs(title = "Marginal Effects of Age on Experienced Fistula",
       x = "Age",
       y = "Predicted Probability")
