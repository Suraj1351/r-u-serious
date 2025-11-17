

# Q3: Import Excel & Handle Missing Data
# Create sample data for Q3
library(writexl)

data <- data.frame(
  Name  = c("A", "B", "C", "D", "E"),
  Age   = c(23, NA, 25, NA, 30),
  Score = c(88, 92, NA, 75, 81)
)

# Save as Excel file
write_xlsx(data, "data.xlsx")

library(readxl)

# Import Excel file
data <- read_excel("data.xlsx")

# Show original data
print("Original Data:")
print(data)

# Remove rows with missing values
clean_data <- na.omit(data)
print("Data after na.omit():")
print(clean_data)

# Mean imputation
mean_age <- mean(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- mean_age
print("Mean used for Age:")
print(mean_age)

# Median imputation
median_score <- median(data$Score, na.rm = TRUE)
data$Score[is.na(data$Score)] <- median_score
print("Median used for Score:")
print(median_score)

# Show final data after imputations
print("Final Data after Imputation:")
print(data)
