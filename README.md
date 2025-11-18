https://chatgpt.com/share/691bf1ad-1538-8013-bfad-4f446fea1f18

# Q1: Dataframe, List, and Subsetting (No libraries required)

# Create dataframe
df <- data.frame(
  Name = c("A", "B", "C", "D"),
  Age = c(21, 25, 22, 24),
  Score = c(85, 90, 78, 88)
)

# Subsetting dataframe
df[1:2, ]                  # first 2 rows
df$Age                    # Age column
df[df$Score > 80, ]       # conditional subset

# Create list
my_list <- list(
  Numbers = 1:5,
  Letters = c("X", "Y", "Z"),
  Dataframe = df
)

# Subsetting list
my_list[[1]]              # first element
my_list$Letters           # Letters
my_list$Dataframe$Score   # Score column from dataframe


# Create a dataframe
students <- data.frame(
  Name = c("Amit", "Riya", "Sameer", "Neha"),
  Age = c(21, 22, 20, 23),
  Marks = c(85, 90, 78, 92)
)

# Print the dataframe
print("Student Dataframe:")
print(students)

# Subsetting the dataframe: Selecting specific columns
print("Only Name and Marks columns:")
print(students[, c("Name", "Marks")])

# Subsetting rows using conditions
print("Students with Marks greater than 85:")
print(subset(students, Marks > 85))


# Create a list
my_list <- list(
  Numbers = 1:5,
  Names = c("A", "B", "C"),
  Mixed = list(ID = 101, Score = 88)
)

# Print the list
print("My List:")
print(my_list)

# Subsetting list elements
print("Accessing Numbers element:")
print(my_list$Numbers)

print("Accessing second element of 'Names':")
print(my_list$Names[2])

print("Accessing Score inside the nested list:")
print(my_list$Mixed$Score)



# Q2: CSV Import, Display, Modify Column, Export

id,name,age,department,salary
1,Suraj,23,Data Science,55000
2,Aarav,25,Software Development,62000
3,Neha,22,Human Resources,48000
4,Raj,28,Finance,70000
5,Pooja,24,Marketing,52000
save with input.csv

# Import CSV
data <- read.csv("input.csv")

# Display first 10 rows
head(data, 10)

# Modify a column (example: increase 'age' by 5)
data$age <- data$age + 5

# Export updated CSV
write.csv(data, "updated_output.csv", row.names = FALSE)




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


# Q4: Create dataset, then generate colorful bar plot and histogram

# Create a sample dataset
data <- data.frame(
  Category = c("A", "B", "A", "C", "B", "A", "C", "C", "B", "A"),
  Values   = c(10, 12, 8, 15, 18, 20, 9, 11, 14, 17)
)

# Bar plot with creative colors
barplot(table(data$Category),
        main = "Category Frequency",
        xlab = "Category",
        ylab = "Count",
        col = c("skyblue", "lightgreen", "tomato"),
        border = "black")

# Histogram with creative color gradient
hist(data$Values,
     main = "Value Distribution",
     xlab = "Values",
     col = "lightpink",
     border = "purple")


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


---
title: "Data Cleaning Analysis Report"
output: html_document
---

# **1. Load Data**
```{r}
set.seed(10)
data <- data.frame(
  ID = 1:50,
  Age = sample(c(20:40, NA), 50, replace = TRUE),
  Salary = sample(c(30000:60000, NA), 50, replace = TRUE)
)

data <- rbind(data, data[1:5, ])

head(data)
```

# **2. Remove Duplicates**
```{r}
data_unique <- unique(data)
head(data_unique)
```

# **3. Handle Missing Values**
```{r}
mean_age <- mean(data_unique$Age, na.rm = TRUE)
data_unique$Age[is.na(data_unique$Age)] <- mean_age

median_salary <- median(data_unique$Salary, na.rm = TRUE)
data_unique$Salary[is.na(data_unique$Salary)] <- median_salary

head(data_unique)
```

# **4. Summary**
```{r}
summary(data_unique)
```

# **5. Histogram**
```{r}
hist(data_unique$Age,
     main = "Age Distribution",
     xlab = "Age",
     col = "skyblue")
```


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

