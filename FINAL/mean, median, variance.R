# Q5: Create a numeric dataset and calculate all required statistics

# Create numeric dataset
x <- c(12, 25, 18, 30, 22, 40, 28, 35, 20, 26)

# Show dataset
print("Dataset:")
print(x)

# Mean
mean_value <- mean(x)
print(paste("Mean:", mean_value))

# Median
median_value <- median(x)
print(paste("Median:", median_value))

# Variance
variance_value <- var(x)
print(paste("Variance:", variance_value))

# Standard Deviation
sd_value <- sd(x)
print(paste("Standard Deviation:", sd_value))

# Summary of dataset
print("Summary of Dataset:")
print(summary(x))
