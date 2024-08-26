#Nigeria
library(survey)
library(ggplot2)

# Scaling Weights
data1$V005_scaled <- data1$V005 / 1000000

# Filter data for "Nigeria"
nigeria_data <- subset(data1, country == "Nigeria")


# 普通的glm模型，用于计算VIF
glm_nigeria_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                           religion + residence + wealth + education + occupation + 
                           contraception_use + delivery_place + delivery_professional +
                           postpartum_care,
                         data = nigeria_data, 
                         family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_nigeria_simple)
print(vif_values)



# Create a Sampling Design Object
svydesign_nigeria <- svydesign(id = ~1, weights = ~V005_scaled, data = nigeria_data)

# Use svyglm to weighted regression analysis
glm_nigeria <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                     religion + residence + wealth + education + occupation + 
                     contraception_use + delivery_place + delivery_professional +
                     postpartum_care,
                   design = svydesign_nigeria, 
                   family = quasibinomial())

summary(glm_nigeria)

# 计算 AIC
AIC(glm_nigeria)


# Create a crosstab 1
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(wealth, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Wealth", "Age_Sex", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Wealth`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Age_Sex",
       x = "Wealth",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 2
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(wealth, postpartum_care), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Wealth", "Postpartum_Care", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Wealth`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Postpartum_Care",
       x = "Wealth",
       y = "Postpartum_Care",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 3
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(education, postpartum_care), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Education", "Postpartum_Care", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Education`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Postpartum_Care",
       x = "Education",
       y = "Postpartum_Care",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 4
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(education, delivery_place), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Education", "Delivery_Place", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Education`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Delivery_Place",
       x = "Education",
       y = "Delivery_Place",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 5
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(education, contraception_use), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Education", "Contraception_Use", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Education`, y = `Contraception_Use`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Contraception_Use",
       x = "Education",
       y = "Contraception_Use",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 6
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(education, religion), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Education", "Religion", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Education`, y = `Religion`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Religion",
       x = "Education",
       y = "Religion",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 7
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(occupation, religion), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Occupation", "Religion", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Occupation`, y = `Religion`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Religion",
       x = "Occupation",
       y = "Religion",
       fill = "Fistula Prevalence") +
  theme_minimal()




# Create a crosstab 8
cross4 <- with(nigeria_data, tapply(experienced_fistula, list(occupation, residence), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross4 <- as.data.frame(as.table(cross4))
colnames(cross4) <- c("Occupation", "Residence", "Mean Experienced Fistula")
print(cross4)

# Visualization with ggplot
ggplot(cross4, aes(x = `Occupation`, y = `Residence`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Residence",
       x = "Occupation",
       y = "Residence",
       fill = "Fistula Prevalence") +
  theme_minimal()




# Use svyglm to weighted regression analysis
glm_nigeria <- svyglm(experienced_fistula ~ age + religion + residence + wealth + education + occupation + 
                        contraception_use + delivery_place +
                        postpartum_care,
                      design = svydesign_nigeria, 
                      family = quasibinomial())

summary(glm_nigeria)

# 计算 AIC
AIC(glm_nigeria)