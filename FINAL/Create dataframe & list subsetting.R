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
