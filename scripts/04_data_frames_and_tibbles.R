# ==============================================================================
# Script: 04_data_frames_and_tibbles.R
# Purpose: Working with base data.frame structures and modern tibbles
# ==============================================================================

library(tibble)

# 1. Creating a Base R Data Frame
df_base <- data.frame(
  ID = 101:104,
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40),
  Salary = c(50000, 62000, 75000, 48000)
)

# 2. Creating a Tidyverse Tibble
tb_modern <- tibble(
  ID = 101:104,
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40),
  Salary = c(50000, 62000, 75000, 48000)
)

# 3. Inspecting Data Structure
str(df_base)
glimpse(tb_modern)

# 4. Extracting and Subsetting
df_base$Salary          # Vector extraction via $
tb_modern[["Age"]]       # Vector extraction via [[ ]]
df_base[1, ]            # Extract first row
df_base[, c("Name", "Salary")] # Extract specific columns