# --------------------------------------------------------
# clear the environment var area
rm(list = ls())
# clear all plots
graphics.off()
# clear the console area
cat("\014")

# --------------------------------------------------------
# read sav file
library(haven)
data.origin = read_sav('/Users/qimiao/Desktop/7.28/Data.sav')

# --------------------------------------------------------
#Delete missing values in target rows
library(dplyr)

data_clean <- data.origin %>% filter(!is.na(experienced_fistula))

# --------------------------------------------------------
#See the missing value
library(naniar)
gg_miss_var(data_clean)

# --------------------------------------------------------
# 选择特定变量
selected_columns <- c(
  "experienced_fistula",
  "education",
  "distance",
  "age_sex",
  "wealth",
  "V005",
  "residence",
  "occupation",
  "number_birth",
  "delivery_category",
  "contraception_use",
  "age",
  "religion"
)

# 创建一个包含这些变量的新数据框
data_selected <- data_clean[, selected_columns]

# 删除包含缺失值的行
data1 <- na.omit(data_selected)

# 查看数据集的前六行
head(data1)

# 查看数据集的结构
str(data1)

# --------------------------------------------------------
library(caret)

# 确保 experienced_fistula 是因子变量
data1$experienced_fistula <- as.factor(data1$experienced_fistula)

# 检查转换是否成功
str(data1$experienced_fistula)

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

# 查看下采样后数据集的结构
str(data_downsampled)

# 查看 experienced_fistula 的分布
table(data_downsampled$experienced_fistula)

# --------------------------------------------------------
#GLM

# 设置训练控制，包含权重
train_control <- trainControl(method = "cv", number = 10)

# 训练带权重的逻辑回归模型（去掉 V005 列）
set.seed(123)

glm_model_weighted <- train(
  experienced_fistula ~ . - V005,
  data = data_downsampled,
  method = "glm",
  family = binomial,
  trControl = train_control,
  weights = data_downsampled$V005
)


# 查看模型结果
summary(glm_model_weighted)


# 评估模型准确性
predictions <-
  predict(glm_model_weighted, newdata = data_downsampled)
confusionMatrix(predictions, data_downsampled$experienced_fistula)

# 查看变量重要性
varImp(glm_model_weighted)


library(car)
# 检查共线性
# 将 experienced_fistula 转换为数值型以计算 VIF
#data_downsampled$experienced_fistula_num <- as.numeric(data_downsampled$experienced_fistula) - 1

# 使用新的数值型变量计算 VIF
#vif_model <- lm(experienced_fistula_num ~ . - V005 - experienced_fistula, data = data_downsampled)
#vif_values <- vif(vif_model)
#print(vif_values)
