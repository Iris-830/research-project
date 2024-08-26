# Togo
library(survey)
library(ggplot2)
library(car)

# Scaling Weights
data1$V005_scaled <- data1$V005 / 1000000

# Filter data for "Togo"
togo_data <- subset(data1, country == "Togo")

# 普通的glm模型，用于计算VIF
glm_togo_simple <- glm(experienced_fistula ~ age + age_sex + distance + number_birth +
                         religion + residence + wealth + education + occupation + 
                         contraception_use + delivery_place + delivery_professional +
                         postpartum_care,
                       data = togo_data, 
                       family = quasibinomial())

# 计算并打印VIF值
vif_values <- vif(glm_togo_simple)
print(vif_values)

# Create a Sampling Design Object
svydesign_togo <- svydesign(id = ~1, weights = ~V005_scaled, data = togo_data)

# Use svyglm to weighted regression analysis
glm_togo <- svyglm(experienced_fistula ~ age + age_sex + distance + number_birth +
                       religion + residence + wealth + education + occupation + 
                       contraception_use + delivery_place + delivery_professional +
                       postpartum_care,
                     design = svydesign_togo, 
                     family = quasibinomial())

summary(glm_togo)

# 计算 AIC
AIC(glm_togo)


# Create a crosstab 1
cross6 <- with(togo_data, tapply(experienced_fistula, list(wealth, residence), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Wealth", "Residence", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Wealth`, y = `Residence`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Residence",
       x = "Wealth",
       y = "Residence",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 2
cross6 <- with(togo_data, tapply(experienced_fistula, list(wealth, delivery_place), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Wealth", "Delivery_Place", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Wealth`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Wealth and Delivery_Place",
       x = "Wealth",
       y = "Delivery_Place",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 3
cross6 <- with(togo_data, tapply(experienced_fistula, list(education, distance), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Education", "Distance", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Education`, y = `Distance`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Distance",
       x = "Education",
       y = "Distance",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 4
cross6 <- with(togo_data, tapply(experienced_fistula, list(education, religion), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Education", "Religion", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Education`, y = `Religion`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Religion",
       x = "Education",
       y = "Religion",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 5
cross6 <- with(togo_data, tapply(experienced_fistula, list(education, postpartum_care), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Education", "Postpartum_Care", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Education`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Education and Postpartum_Care",
       x = "Education",
       y = "Postpartum_Care",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 6
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, postpartum_care), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Postpartum_Care", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Postpartum_Care`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Postpartum_Care",
       x = "Occupation",
       y = "Postpartum_Care",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 7
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, delivery_professional), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Delivery_Professional", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Delivery_Professional`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Professional",
       x = "Occupation",
       y = "Delivery_Professional",
       fill = "Fistula Prevalence") +
  theme_minimal()



# Create a crosstab 8
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, delivery_place), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Delivery_Place", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Delivery_Place`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Delivery_Place",
       x = "Occupation",
       y = "Delivery_Place",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 9
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, residence), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Residence", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Residence`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Residence",
       x = "Occupation",
       y = "Residence",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 10
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, number_birth), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Number_Birth", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Number_Birth`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Number_Birth",
       x = "Occupation",
       y = "Number_Birth",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 11
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, distance), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Distance", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Distance`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Distance",
       x = "Occupation",
       y = "Distance",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 12
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, age_sex), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Age_Sex", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Age_Sex`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Age_Sex",
       x = "Occupation",
       y = "Age_Sex",
       fill = "Fistula Prevalence") +
  theme_minimal()


# Create a crosstab 13
cross6 <- with(togo_data, tapply(experienced_fistula, list(occupation, age), mean, na.rm = TRUE))

# Convert the crosstab to a data frame
cross6 <- as.data.frame(as.table(cross6))
colnames(cross6) <- c("Occupation", "Age", "Mean Experienced Fistula")
print(cross6)

# Visualization with ggplot
ggplot(cross6, aes(x = `Occupation`, y = `Age`, fill = `Mean Experienced Fistula`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Fistula Prevalence by Occupation and Age",
       x = "Occupation",
       y = "Age",
       fill = "Fistula Prevalence") +
  theme_minimal()