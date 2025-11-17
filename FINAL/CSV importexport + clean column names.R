# Q8: Demonstrate CSV Import/Export and clean column names

# Create a sample dataset
df <- data.frame(
  "Employee Name" = c("Amit", "Riya", "John"),
  "Monthly Salary (INR)" = c(40000, 52000, 48000),
  "Joining-Date" = as.Date(c("2023-01-10", "2023-03-05", "2023-04-20"))
)

# Export this dataset to CSV
write.csv(df, "input_data.csv", row.names = FALSE)

# Import CSV
data <- read.csv("input_data.csv")

# Clean improper column names
names(data) <- make.names(names(data))

# Export cleaned CSV
write.csv(data, "cleaned_output.csv", row.names = FALSE)

# Print result
print(data)
