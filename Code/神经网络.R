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




# 确保权重列在合适的范围内（例如，缩放到 [0, 1] 范围内）
data_downsampled$V005 <- (data_downsampled$V005 - min(data_downsampled$V005)) / (max(data_downsampled$V005) - min(data_downsampled$V005))

# 查看下采样后数据集的结构
str(data_downsampled)

# 查看 experienced_fistula 的分布
table(data_downsampled$experienced_fistula)

# --------------------------------------------------------
#神经网络
install.packages("torch")
library(torch)
library(caret)
# 安装 torch 库
torch::install_torch()

# 分割数据集为训练集和测试集
set.seed(123)
train_index <- as.vector(createDataPartition(data_downsampled$experienced_fistula, p = 0.8, list = FALSE))
train_data <- data_downsampled[train_index, ]
test_data <- data_downsampled[-train_index, ]

# 转换数据为 torch 张量
x_train <- as_tensor(as.matrix(train_data %>% select(-experienced_fistula, -V005)), dtype = torch_float())
y_train <- as_tensor(as.numeric(train_data$experienced_fistula) - 1, dtype = torch_long())  # 目标变量需要从0开始
x_test <- as_tensor(as.matrix(test_data %>% select(-experienced_fistula, -V005)), dtype = torch_float())
y_test <- as_tensor(as.numeric(test_data$experienced_fistula) - 1, dtype = torch_long())

# 转换数据为 torch 张量
x_train <- as_tensor(as.matrix(train_data %>% select(-experienced_fistula, -V005)), dtype = torch_float())
y_train <- as_tensor(as.numeric(train_data$experienced_fistula) - 1, dtype = torch_long())  # 目标变量需要从0开始
x_test <- as_tensor(as.matrix(test_data %>% select(-experienced_fistula, -V005)), dtype = torch_float())
y_test <- as_tensor(as.numeric(test_data$experienced_fistula) - 1, dtype = torch_long())

# 定义神经网络模型
model <- nn_module(
  "Net",
  initialize = function() {
    self$fc1 <- nn_linear(ncol(x_train), 10)
    self$fc2 <- nn_linear(10, 2)
  },
  forward = function(x) {
    x %>% 
      self$fc1() %>% 
      nnf_relu() %>% 
      self$fc2()
  }
)

# 初始化模型、损失函数和优化器
net <- model()
criterion <- nn_cross_entropy_loss()
optimizer <- optim_adam(net$parameters, lr = 0.001)

# 训练模型
num_epochs <- 100
for (epoch in 1:num_epochs) {
  net$train()
  optimizer$zero_grad()
  output <- net(x_train)
  loss <- criterion(output, y_train)
  loss$backward()
  optimizer$step()
  
  if (epoch %% 10 == 0) {
    cat("Epoch:", epoch, "Loss:", loss$item(), "\n")
  }
}

# 模型评估
net$eval()
output <- net(x_test)
_, predicted <- torch_max(output, 2)
predicted <- as.numeric(predicted)

# 计算混淆矩阵
confusion_matrix <- table(Predicted = predicted, Actual = as.numeric(test_data$experienced_fistula) - 1)
print(confusion_matrix)

# 计算准确率
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
cat("Accuracy:", accuracy, "\n")