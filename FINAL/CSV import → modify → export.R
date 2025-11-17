# Q2: CSV Import, Display, Modify Column, Export

# Import CSV
data <- read.csv("input.csv")

# Display first 10 rows
head(data, 10)

# Modify a column (example: increase 'age' by 5)
data$age <- data$age + 5

# Export updated CSV
write.csv(data, "updated_output.csv", row.names = FALSE)
