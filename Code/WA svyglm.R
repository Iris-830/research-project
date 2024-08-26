#West Africa

library(survey)

# 缩放权重
data1$V005_scaled <- data1$V005 / 1000000


# 普通的glm模型，用于计算VIF
glm_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                         religion + residence + wealth + education + occupation + 
                         contraception_use + delivery_place + delivery_professional +
                         postpartum_care,
                       data = data1, 
                       family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_simple)
print(vif_values)




# 对完整的数据集进行整体回归分析
# 创建完整数据集的抽样设计对象
svydesign_overall <- svydesign(id = ~1, weights = ~V005_scaled, data = data1)

# 使用 svyglm 进行整体加权回归分析
glm_overall <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                        religion + residence + wealth + education + occupation + 
                        contraception_use + delivery_place + delivery_professional+
                        postpartum_care,
                      design = svydesign_overall, 
                      family = quasibinomial())

# 打印整体回归分析的结果
summary(glm_overall)


# 计算 AIC
AIC(glm_overall)


# 示例数据：假设你的数据集为 data1，目标变量为 experienced_fistula

# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(wealth, postpartum_care), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Wealth", "Postpartum Care", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Wealth`, y = `Postpartum Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Wealth and Postpartum Care",
       x = "Wealth",
       y = "Postpartum Care",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()




# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(education, distance), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Education", "Distance", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Education`, y = `Distance`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Education and Distance",
       x = "Education",
       y = "Distance",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()



# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(education, religion), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Education", "Religion", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Education`, y = `Religion`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Education and Religion",
       x = "Education",
       y = "Religion",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()





# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(education, delivery_place), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Education", "Delivery_Place", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Education`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Education and Delivery_Place",
       x = "Education",
       y = "Delivery_Place",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()




# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(occupation, residence), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Occupation", "Residence", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Occupation`, y = `Residence`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Occupation and Residence",
       x = "Occupation",
       y = "Residence",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()




# 创建交叉表，并计算每个组合的患病率（目标变量的均值）
cross_mean <- with(data1, tapply(experienced_fistula, list(occupation, postpartum_care), mean, na.rm = TRUE))

# 将交叉表转换为数据框，便于查看
cross_mean_df <- as.data.frame(as.table(cross_mean))
colnames(cross_mean_df) <- c("Occupation", "Postpartum_Care", "Mean Experienced Fistula")

# 打印结果
print(cross_mean_df)

# 如果你希望以更直观的方式展示，可以使用 ggplot2 进行可视化
library(ggplot2)

ggplot(cross_mean_df, aes(x = `Occupation`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Mean Fistula Prevalence by Occupation and Postpartum_Care",
       x = "Occupation",
       y = "Postpartum_Care",
       fill = "Mean Fistula Prevalence") +
  theme_minimal()



# 使用 svyglm 进行整体加权回归分析
glm_overall <- svyglm(experienced_fistula ~ distance + number_birth +
                        religion + wealth + education + occupation + 
                        contraception_use + delivery_place +
                        postpartum_care,
                      design = svydesign_overall, 
                      family = quasibinomial())

# 打印整体回归分析的结果
summary(glm_overall)


# 计算 AIC
AIC(glm_overall)