# ==============================================================================
# Script: 01_variables_data_types.R
# Purpose: Variable assignment and core R data types
# ==============================================================================

# 1. Variable Assignment (Use '<-' as standard assignment operator)
age <- 25
name <- "Alice"
is_student <- TRUE

# 2. Basic Data Types in R
# Numeric (Double / Floating point)
height <- 1.75 

# Integer (Append 'L' to force integer type)
count <- 10L 

# Character (Strings)
city <- "San Francisco"

# Logical (Boolean TRUE or FALSE)
has_passed <- TRUE

# Factor (Categorical variables)
grade <- factor("A", levels = c("A", "B", "C", "D", "F"))

# 3. Inspecting Data Types
class(height)      # "numeric"
class(count)       # "integer"
class(city)        # "character"
class(has_passed)  # "logical"
class(grade)       # "factor"

# 4. Printing Variables
print(paste(name, "is", age, "years old and lives in", city))