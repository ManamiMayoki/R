# ==============================================================================
# Script: 05_data_import_and_inspection.R
# Purpose: Importing dataset files and performing exploratory inspections
# ==============================================================================

library(readr)

# 1. Export sample dataset to establish an input file
write_csv(mtcars, "sample_dataset.csv")

# 2. Import Data using readr
df_imported <- read_csv("sample_dataset.csv")

# 3. Primary Data Inspection Functions
head(df_imported, n = 5)  # View first 5 rows
tail(df_imported, n = 3)  # View last 3 rows
dim(df_imported)          # View dimensions (rows, columns)
colnames(df_imported)     # List column names
summary(df_imported)      # Summary metrics per column