# SierraLeone
library(survey)
library(ggplot2)

# Scaling Weights
data1$V005_scaled <- data1$V005 / 1000000

# Filter data for "SierraLeone"
sierra_data <- subset(data1, country == "SierraLeone")

# 普通的glm模型，用于计算VIF
glm_sierra_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                           religion + residence + wealth + education + occupation + 
                           contraception_use + delivery_place + delivery_professional +
                           postpartum_care,
                         data = sierra_data, 
                         family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_sierra_simple)
print(vif_values)


# Create a Sampling Design Object
svydesign_sierra <- svydesign(id = ~1, weights = ~V005_scaled, data = sierra_data)

# Use svyglm to weighted regression analysis
glm_sierra <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                        religion + residence + wealth + education + occupation + 
                        contraception_use + delivery_place + delivery_professional +
                        postpartum_care,
                      design = svydesign_sierra, 
                      family = quasibinomial())

summary(glm_sierra)

# 计算 AIC
AIC(glm_sierra)


# Create a crosstab 1
cross5 <- with(sierra_data, tapply(experienced_fistula, list(wealth, age), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Wealth", "Age", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Wealth`, y = `Age`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Age",
       x = "Wealth",
       y = "Age",
       fill = "Fistula Prevalence") +
  theme_minimal()




# Create a crosstab 2
cross5 <- with(sierra_data, tapply(experienced_fistula, list(wealth, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Wealth", "Age_Sex", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Wealth`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Age_Sex",
       x = "Wealth",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 3
cross5 <- with(sierra_data, tapply(experienced_fistula, list(education, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Education", "Age_Sex", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Education`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Age_Sex",
       x = "Education",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 4
cross5 <- with(sierra_data, tapply(experienced_fistula, list(occupation, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Occupation", "Age_Sex", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Occupation`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Age_Sex",
       x = "Occupation",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 5
cross5 <- with(sierra_data, tapply(experienced_fistula, list(occupation, number_birth), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Occupation", "Number_birth", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Occupation`, y = `Number_birth`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Number_birth",
       x = "Occupation",
       y = "Number_birth",
       fill = "Fistula Prevalence") +
  theme_minimal()




# Create a crosstab 6
cross5 <- with(sierra_data, tapply(experienced_fistula, list(wealth, number_birth), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Wealth", "Number_birth", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Wealth`, y = `Number_birth`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Number_birth",
       x = "Wealth",
       y = "Number_birth",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 7
cross5 <- with(sierra_data, tapply(experienced_fistula, list(wealth, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Wealth", "Delivery_Professional", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Wealth`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Delivery_Professional",
       x = "Wealth",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()

# Create a crosstab 8
cross5 <- with(sierra_data, tapply(experienced_fistula, list(education, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Education", "Delivery_Professional", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Education`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Delivery_Professional",
       x = "Education",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 9
cross5 <- with(sierra_data, tapply(experienced_fistula, list(occupation, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Occupation", "Delivery_Professional", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Occupation`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Professional",
       x = "Occupation",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 10
cross5 <- with(sierra_data, tapply(experienced_fistula, list(occupation, contraception_use), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Occupation", "Contraception_Use", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Occupation`, y = `Contraception_Use`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Contraception_Use",
       x = "Occupation",
       y = "Contraception_Use",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 11
cross5 <- with(sierra_data, tapply(experienced_fistula, list(occupation, postpartum_care), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross5 <- as.data.frame(as.table(cross5))
colnames(cross5) <- c("Occupation", "Postpartum_Care", "Mean Experienced Fistula")
print(cross5)

# Visualization with ggplot
ggplot(cross5, aes(x = `Occupation`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Postpartum_Care",
       x = "Occupation",
       y = "Postpartum_Care",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Use svyglm to weighted regression analysis
glm_sierra <- svyglm(experienced_fistula ~ age + age_sex + number_birth +
                       religion + wealth + education + occupation + 
                       contraception_use + delivery_place + delivery_professional +
                       postpartum_care,
                     design = svydesign_sierra, 
                     family = quasibinomial())

summary(glm_sierra)

# 计算 AIC
AIC(glm_sierra)