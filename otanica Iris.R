################################################################################
# Botanica Iris – Full Analysis Script
# This script explores the famous iris dataset using R, dplyr, ggplot2, corrplot
################################################################################

# -------------------------------
# 📦 0. Install and load packages
# -------------------------------
# Uncomment these lines the first time you run the script
# install.packages("ggplot2")
# install.packages("dplyr")
# install.packages("corrplot")

library(ggplot2)
library(dplyr)
library(corrplot)

# -------------------------------
# 🌱 1. Load and inspect data
# -------------------------------
data(iris)        # Load built-in dataset
head(iris)        # First rows
str(iris)         # Structure
summary(iris)     # Statistical summary
sum(is.na(iris))  # Check for missing values

# -------------------------------
# 📊 2. Descriptive statistics
# -------------------------------
# Grouped means and standard deviations
iris %>%
  group_by(Species) %>%
  summarise(across(where(is.numeric), list(mean = mean, sd = sd)))

# Correlation matrix (numerical variables only)
cor_matrix <- cor(iris[, 1:4])
print(cor_matrix)

# Heatmap of correlation
corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black")

# -------------------------------
# 🎨 3. Data Visualizations
# -------------------------------

# Histogram of Petal Length
ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_histogram(bins = 20, alpha = 0.6, position = "identity") +
  labs(title = "Distribution of Petal Length") +
  theme_minimal()

# Boxplot of Sepal Length by Species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Sepal Length by Species") +
  theme_minimal()

# Scatter plot (Petal Length vs Petal Width)
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Petal Length vs Width by Species") +
  theme_minimal()

# -------------------------------
# 💾 4. Export data and graphics
# -------------------------------

# Export cleaned dataset
write.csv(iris, "iris_cleaned.csv", row.names = FALSE)

# Save a scatterplot to file
ggsave("scatter_petal_plot.png", width = 6, height = 4)

################################################################################
# End of Script – Your analysis is ready!
################################################################################
