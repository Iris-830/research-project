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
  "country",
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
# 确保数据中的国家变量已经转换为因子
data1$country <- as.factor(data1$country)

# 将 experienced_fistula 转换为因子
data1$experienced_fistula <- as_factor(data1$experienced_fistula)

# 获取所有的国家列表
countries <- levels(data1$country)

# 创建一个列表来存储每个国家的模型和结果
results_list <- list()

# 循环遍历每个国家
for (country in countries) {
  cat("Processing country:", country, "\n")
  
  # 筛选出当前国家的数据
  country_data <- data1 %>% filter(country == !!country)
  
  # 删除包含缺失值的行
  country_data <- na.omit(country_data)
  
  # 下采样
  set.seed(123)
  country_data_downsampled <- downSample(
    x = country_data %>% select(-experienced_fistula),
    y = country_data$experienced_fistula,
    yname = "experienced_fistula"
  )
  
  # 确保权重列在合适的范围内（例如，缩放到 [0, 1] 范围内）
  country_data_downsampled$V005 <- (country_data_downsampled$V005 - min(country_data_downsampled$V005)) / (max(country_data_downsampled$V005) - min(country_data_downsampled$V005))
  
  # 分割数据集为训练集和测试集
  set.seed(123)
  train_index <- createDataPartition(country_data$experienced_fistula, p = 0.8, list = FALSE)
  train_data <- country_data[train_index, ]
  test_data <- country_data[-train_index, ]
  
  # 确保 experienced_fistula 是因子变量
  train_data$experienced_fistula <- as.factor(train_data$experienced_fistula)
  test_data$experienced_fistula <- as.factor(test_data$experienced_fistula)
  
  # 设置训练控制
  train_control <- trainControl(method = "cv", number = 10, classProbs = TRUE, summaryFunction = twoClassSummary)
  
  # 训练GLM模型
  set.seed(123)
  glm_model <- train(
    experienced_fistula ~ . - V005 - country,
    data = train_data,
    method = "glm",
    family = binomial,
    trControl = train_control,
    weights = train_data$V005,
    metric = "Accuracy"
  )
  
  # 生成预测
  predictions <- predict(glm_model, newdata = test_data)
  
  # 计算混淆矩阵
  confusion_matrix <- confusionMatrix(predictions, test_data$experienced_fistula)
  
  # 存储模型和结果
  results_list[[country]] <- list(
    model = glm_model,
    confusion_matrix = confusion_matrix
  )
}

# 查看每个国家的结果
for (country in countries) {
  cat("Results for country:", country, "\n")
  print(results_list[[country]]$confusion_matrix)
  cat("\n")
}