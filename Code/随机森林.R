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

# # 查看数据集的前六行
# head(data1)
# 
# # 查看数据集的结构
# str(data1)

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

# 确保所有列都是数值类型
data_downsampled <- data_downsampled %>%
  mutate(across(everything(), as.numeric))

# 数据标准化
preProcValues <- preProcess(
  data_downsampled %>% select(-experienced_fistula),
  method = c("center", "scale")
)
data_normalized <- predict(preProcValues, data_downsampled)

# 分割数据集为训练集和测试集
set.seed(123)
train_index <- createDataPartition(data_normalized$experienced_fistula, p = 0.8, list = FALSE)
train_data <- data_normalized[train_index, ]
test_data <- data_normalized[-train_index, ]

# 训练带权重的随机森林模型
set.seed(123)
train_control <- trainControl(method = "cv", number = 10)
rf_model <- train(
  experienced_fistula ~ . - V005,
  data = train_data,
  method = "rf",
  trControl = train_control,
  weights = train_data$V005,
  importance = TRUE
)

# 查看模型
print(rf_model)

# 生成预测
predictions <- predict(rf_model, newdata = test_data)

# 确保预测结果和实际标签都是因子类型，并且具有相同的级别
predictions <- factor(predictions, levels = levels(test_data$experienced_fistula))

# 计算混淆矩阵
confusion_matrix <- confusionMatrix(predictions, test_data$experienced_fistula)
print(confusion_matrix)

# 查看变量重要性
importance <- varImp(rf_model)
print(importance)