#Cote d'lvoire
library(survey)
library(ggplot2)

# 缩放权重
data1$V005_scaled <- data1$V005 / 1000000

# 筛选出 "Country1" 的数据
cote_data <- subset(data1, country == "Cote d'lvoire")

# 普通的glm模型，用于计算VIF
glm_cote_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                           religion + residence + wealth + education + occupation + 
                           contraception_use + delivery_place + delivery_professional +
                           postpartum_care,
                         data = cote_data, 
                         family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_cote_simple)
print(vif_values)

# 创建 "Country1" 的抽样设计对象
svydesign_cote <- svydesign(id = ~1, weights = ~V005_scaled, data = cote_data)

# 使用 svyglm 进行 "Country1" 的加权回归分析
glm_cote <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                         religion + residence + wealth + education + occupation + 
                         contraception_use + delivery_place + delivery_professional +
                         postpartum_care,
                       design = svydesign_cote, 
                       family = quasibinomial())

# 打印 "Country1" 的回归分析结果
summary(glm_cote)

# 计算 AIC
AIC(glm_cote)

# Create a crosstab1
cross1 <- with(cote_data, tapply(experienced_fistula, list(wealth, contraception_use), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Wealth", "Contraception_Use", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Wealth`, y = `Contraception_Use`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Contraception_Use",
       x = "Wealth",
       y = "Contraception_Use",
       fill = "Fistula Prevalence") +
  theme_minimal()

# Create a crosstab2
cross1 <- with(cote_data, tapply(experienced_fistula, list(wealth, delivery_place), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Wealth", "Delivery_Place", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Wealth`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Delivery_Place",
       x = "Wealth",
       y = "Delivery_Place",
       fill = "Fistula Prevalence") +
  theme_minimal()

# Create a crosstab3
cross1 <- with(cote_data, tapply(experienced_fistula, list(occupation, delivery_place), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Occupation", "Delivery_Place", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Occupation`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Place",
       x = "Occupation",
       y = "Delivery_Place",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab4
cross1 <- with(cote_data, tapply(experienced_fistula, list(occupation, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Occupation", "Delivery_Professional", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Occupation`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Professional",
       x = "Occupation",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab5
cross1 <- with(cote_data, tapply(experienced_fistula, list(education, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Education", "Age_Sex", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Education`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Age_Sex",
       x = "Education",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab6
cross1 <- with(cote_data, tapply(experienced_fistula, list(education, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross1 <- as.data.frame(as.table(cross1))
colnames(cross1) <- c("Education", "Delivery_Professional", "Mean Experienced Fistula")
print(cross1)

# Visualization with ggplot
ggplot(cross1, aes(x = `Education`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Delivery_Professional",
       x = "Education",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()




# 使用 svyglm 进行 "Country1" 的加权回归分析
glm_cote <- svyglm(experienced_fistula ~ age_sex +
                     wealth + education + occupation + 
                     contraception_use + delivery_place + delivery_professional,
                   design = svydesign_cote, 
                   family = quasibinomial())

# 打印 "Country1" 的回归分析结果
summary(glm_cote)

# 计算 AIC
AIC(glm_cote)