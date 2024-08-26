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
  "country",
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
# 加载所需的库
library(dplyr)
library(ggplot2)
library(corrplot)

# 描述性统计分析
summary_stats <- data1 %>% 
  summarise_all(list(mean = ~mean(.), sd = ~sd(.), min = ~min(.), median = ~median(.), max = ~max(.)))
print(summary_stats)

# 可视化分析

# 



# 相关性分析
library(corrplot)

num_vars_matrix <- data1 %>% select_if(is.numeric)
corr_matrix <- cor(num_vars_matrix, use = "complete.obs")
corrplot(corr_matrix, method = "circle")


# 类别变量分析
str(data1)
# 转换为因子变量
factor_vars <- c("experienced_fistula", "education", "distance", "age_sex", "wealth", 
                 "residence", "occupation", "delivery_category", "contraception_use", 
                 "age", "religion")

data1[factor_vars] <- lapply(data1[factor_vars], as.factor)

# 类别变量分析
cat_vars_summary <- data1 %>%
  select(all_of(factor_vars)) %>%
  summarise(across(everything(), ~list(table(.)), .names = "freq_{.col}")) %>%
  bind_cols(
    data1 %>%
      select(all_of(factor_vars)) %>%
      summarise(across(everything(), ~list(prop.table(table(.))), .names = "prop_{.col}"))
  )

# 打印结果
print(cat_vars_summary)






