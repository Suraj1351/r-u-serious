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
