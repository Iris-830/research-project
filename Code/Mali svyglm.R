#Mali
library(survey)
library(ggplot2)

# Scaling Weights
data1$V005_scaled <- data1$V005 / 1000000

# Filter data for "Mali"
mali_data <- subset(data1, country == "Mali")


# 普通的glm模型，用于计算VIF
glm_mali_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                            religion + residence + wealth + education + occupation + 
                            contraception_use + delivery_place + delivery_professional +
                            postpartum_care,
                          data = mali_data, 
                          family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_mali_simple)
print(vif_values)



# Create a Sampling Design Object
svydesign_mali <- svydesign(id = ~1, weights = ~V005_scaled, data = mali_data)

# Use svyglm to weighted regression analysis
glm_mali <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                       religion + residence + wealth + education + occupation + 
                       contraception_use + delivery_place + delivery_professional +
                       postpartum_care,
                     design = svydesign_mali, 
                     family = quasibinomial())

summary(glm_mali)

# 计算 AIC
AIC(glm_mali)



# Use svyglm to weighted regression analysis
glm_mali <- svyglm(experienced_fistula ~ religion + education + delivery_place,
                   design = svydesign_mali, 
                   family = quasibinomial())

summary(glm_mali)

# 计算 AIC
AIC(glm_mali)
