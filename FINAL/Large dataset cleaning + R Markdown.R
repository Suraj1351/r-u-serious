# Q6: Create large dataset, clean it, and prepare R Markdown report

# Create large sample dataset
set.seed(10)
data <- data.frame(
  ID = 1:50,
  Age = sample(c(20:40, NA), 50, replace = TRUE),
  Salary = sample(c(30000:60000, NA), 50, replace = TRUE)
)

# Add duplicates
data <- rbind(data, data[1:5, ])

# Show original
print("Original Dataset:")
print(head(data))

# Remove duplicates
data_unique <- unique(data)
print("After Removing Duplicates:")
print(head(data_unique))

# Handle missing values (Age)
mean_age <- mean(data_unique$Age, na.rm = TRUE)
data_unique$Age[is.na(data_unique$Age)] <- mean_age

# Handle missing values (Salary)
median_salary <- median(data_unique$Salary, na.rm = TRUE)
data_unique$Salary[is.na(data_unique$Salary)] <- median_salary

print("Final Cleaned Data:")
print(head(data_unique))

