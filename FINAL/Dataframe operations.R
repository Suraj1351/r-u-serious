# Q7: Create dataframe and perform operations

# Create first dataframe
df1 <- data.frame(
  ID = 1:5,
  Name = c("A", "B", "C", "D", "E"),
  Score = c(85, 78, 92, 88, 74)
)

# Add a new column
df1$Grade <- c("A", "B", "A+", "A", "B")

# Delete a column
df1$Score <- NULL

# Create second dataframe
df2 <- data.frame(
  ID = 1:5,
  Age = c(21, 23, 22, 24, 25)
)

# Merge both dataframes by ID
merged_df <- merge(df1, df2, by = "ID")

# Apply functions using lapply()
lapply_result <- lapply(merged_df[, -1], class)

# Apply functions using sapply()
sapply_result <- sapply(merged_df[, -1], mean)

# Print results
print(merged_df)
print(lapply_result)
print(sapply_result)
