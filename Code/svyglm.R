library(survey)

# 假设你有一个按国家分层的数据集
countries <- unique(data1$country)

# 缩放权重
data1$V005_scaled <- data1$V005 / 1000000

# 遍历每个国家，分别进行回归分析
for (country in countries) {
  country_data <- data1 %>% filter(country == !!country)
  
  # 创建抽样设计对象
  svydesign_country <- svydesign(id = ~1, weights = ~V005_scaled, data = country_data)
  
  # 使用 svyglm 进行加权回归分析
  glm_country <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                          religion + residence + wealth + education + occupation + 
                          contraception_use + delivery_place + delivery_professional + 
                          postpartum_care, 
                        design = svydesign_country, 
                        family = quasibinomial())
  
  # 打印每个国家的分析结果
  cat("Country:", country, "\n")
  print(summary(glm_country))
  
  # 提取回归模型的设计矩阵
  model_matrix_country <- model.matrix(glm_country)
  
  # 计算 VIF
  vif_values_country <- vif(glm_country)
  
  # 打印 VIF 值
  cat("VIF values for", country, ":\n")
  print(vif_values_country)
  cat("\n\n")
}

# 对完整的数据集进行整体回归分析
# 创建完整数据集的抽样设计对象
svydesign_overall <- svydesign(id = ~1, weights = ~V005_scaled, data = data1)

# 使用 svyglm 进行整体加权回归分析
glm_overall <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                        religion + residence + wealth + education + occupation + 
                        contraception_use + delivery_place + delivery_professional + 
                        postpartum_care, 
                      design = svydesign_overall, 
                      family = quasibinomial())

# 打印整体回归分析的结果
summary(glm_overall)

# 提取整体模型的设计矩阵
model_matrix_overall <- model.matrix(glm_overall)

# 计算 VIF
vif_values_overall <- vif(glm_overall)

# 打印整体模型的 VIF 值
cat("VIF values for overall model:\n")
print(vif_values_overall)



# 筛选出 Cote d'Ivoire 的数据
country_data <- data1 %>% filter(country == "Cote d'Ivoire")

glm_cote <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                        religion + wealth + education + occupation + 
                        contraception_use + delivery_place + delivery_professional + 
                        postpartum_care, 
                      design = svydesign_country, 
                      family = quasibinomial())
summary(glm_cote)
# 提取整体模型的设计矩阵
model_matrix_cote <- model.matrix(glm_cote)

# 计算 VIF
vif_values_cote <- vif(glm_cote)

# 打印整体模型的 VIF 值
cat("VIF values for cote model:\n")
print(vif_values_cote)


# 筛选出 Mali 的数据
country_data <- data1 %>% filter(country == "Mali")

glm_mali <- svyglm(experienced_fistula ~ age_sex + distance + number_birth +
                     religion + residence + wealth + education + occupation + 
                     contraception_use + delivery_place + delivery_professional + 
                     postpartum_care, 
                   design = svydesign_country, 
                   family = quasibinomial())
summary(glm_mali)
# 提取整体模型的设计矩阵
model_matrix_mali <- model.matrix(glm_mali)

# 计算 VIF
vif_values_mali <- vif(glm_mali)

# 打印整体模型的 VIF 值
cat("VIF values for mali model:\n")
print(vif_values_mali)



# 筛选出 Nigeria 的数据
country_data <- data1 %>% filter(country == "Nigeria")

glm_nigeria <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                     religion + residence + wealth + education + occupation + 
                     delivery_place + delivery_professional + 
                     postpartum_care, 
                   design = svydesign_country, 
                   family = quasibinomial())
summary(glm_nigeria)
# 提取整体模型的设计矩阵
model_matrix_nigeria <- model.matrix(glm_nigeria)

# 计算 VIF
vif_values_nigeria <- vif(glm_nigeria)

# 打印整体模型的 VIF 值
cat("VIF values for nigeria model:\n")
print(vif_values_nigeria)



# 筛选出 Togo 的数据
country_data <- data1 %>% filter(country == "Togo")

glm_togo <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                        religion + residence + education + occupation + 
                        contraception_use + delivery_place + delivery_professional + 
                        postpartum_care, 
                      design = svydesign_country, 
                      family = quasibinomial())
summary(glm_togo)
# 提取整体模型的设计矩阵
model_matrix_togo <- model.matrix(glm_togo)

# 计算 VIF
vif_values_togo <- vif(glm_togo)

# 打印整体模型的 VIF 值
cat("VIF values for togo model:\n")
print(vif_values_togo)