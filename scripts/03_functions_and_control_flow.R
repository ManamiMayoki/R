# ==============================================================================
# Script: 03_functions_and_control_flow.R
# Purpose: Control structures (if/else, loops) and custom function creation
# ==============================================================================

# 1. Conditional Execution (if, else if, else)
score <- 85

if (score >= 90) {
  print("Grade: A")
} else if (score >= 80) {
  print("Grade: B")
} else {
  print("Grade: C or lower")
}

# 2. For Loops
for (i in 1:5) {
  cat("Processing iteration step:", i, "\n")
}

# 3. Writing Custom Functions
calculate_bmi <- function(weight_kg, height_m) {
  # Guard clause for invalid inputs
  if (height_m <= 0) {
    stop("Height must be greater than zero.")
  }
  
  bmi <- weight_kg / (height_m^2)
  return(bmi)
}

# Call the custom function
my_bmi <- calculate_bmi(weight_kg = 70, height_m = 1.75)
print(paste("Calculated BMI:", round(my_bmi, 2)))