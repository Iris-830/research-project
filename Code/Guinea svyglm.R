#GuineaBissau
library(survey)
library(ggplot2)

# Scaling Weights
data1$V005_scaled <- data1$V005 / 1000000

# Filter data for "GuineaBissau"
guinea_data <- subset(data1, country == "GuineaBissau")


# 普通的glm模型，用于计算VIF
glm_guinea_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                         religion + residence + wealth + education + occupation + 
                         contraception_use + delivery_place + delivery_professional +
                         postpartum_care,
                       data = guinea_data, 
                       family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_guinea_simple)
print(vif_values)



# Create a Sampling Design Object
svydesign_guinea <- svydesign(id = ~1, weights = ~V005_scaled, data = guinea_data)

# Use svyglm to weighted regression analysis
glm_guinea <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                     religion + residence + wealth + education + occupation + 
                     contraception_use + delivery_place + delivery_professional +
                     postpartum_care,
                   design = svydesign_guinea, 
                   family = quasibinomial())

# 打印 "Country1" 的回归分析结果
summary(glm_guinea)

# 计算 AIC
AIC(glm_guinea)




# Create a crosstab 1
cross2 <- with(guinea_data, tapply(experienced_fistula, list(occupation, residence), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross2 <- as.data.frame(as.table(cross2))
colnames(cross2) <- c("Occupation", "Residence", "Mean Experienced Fistula")
print(cross2)

# Visualization with ggplot
ggplot(cross2, aes(x = `Occupation`, y = `Residence`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Residence",
       x = "Occupation",
       y = "Residence",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 2
cross2 <- with(guinea_data, tapply(experienced_fistula, list(occupation, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross2 <- as.data.frame(as.table(cross2))
colnames(cross2) <- c("Occupation", "Delivery_Professional", "Mean Experienced Fistula")
print(cross2)

# Visualization with ggplot
ggplot(cross2, aes(x = `Occupation`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Professional",
       x = "Occupation",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()




# Use svyglm to weighted regression analysis
glm_guinea <- svyglm(experienced_fistula ~ religion + residence + occupation + 
                       contraception_use + delivery_place + delivery_professional +
                       postpartum_care,
                     design = svydesign_guinea, 
                     family = quasibinomial())

# 打印 "Country1" 的回归分析结果
summary(glm_guinea)

# 计算 AIC
AIC(glm_guinea)