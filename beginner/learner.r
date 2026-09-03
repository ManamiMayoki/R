# R Language: Programming language used for statistics/data analysis
# R Environment: Environment where R code runs
# RStudio: IDE commonly used to write/run R code
# Script: .R file containing R code
# Console: Where R commands execute directly
# Package: Collection of R functions/data/code
# Function: Reusable block of code
# Object: A name that stores a value/data


# 1. Your First R Program

print("Hello, World!")
"Hello, Cygnus!"


# 2. Basic Arithmetic

# | Operator | Meaning           | Example   |
# | -------- | ----------------- | --------- |
# | `+`      | Addition          | `5 + 2`   |
# | `-`      | Subtraction       | `5 - 2`   |
# | `*`      | Multiplication    | `5 * 2`   |
# | `/`      | Division          | `5 / 2`   |
# | `^`      | Power             | `5 ^ 2`   |
# | `%%`     | Modulus/remainder | `5 %% 2`  |
# | `%/%`    | Integer division  | `5 %/% 2` |

10 + 5
10 - 5
10 * 5
10 / 5
10 ^ 2
10 %% 3
10 %/% 3   # 10 divided by 3 is 3 with a remainder of 1, so the integer division result is 3.

15 %/% 2   # 15 divided by 2 is 7 with a remainder of 1, so the integer division result is 7.


# 3. Variables / Objects
#In R, we usually store data in objects.
age <- 24  #Assignment operator <-
name <- "Marufa"
cgpa <- 3.82
age
name
cgpa


# 4. Naming Rules
# A common R convention is snake_case: student_name


# 5. Data Types

# | Type          | Example   |
# | ------------- | --------- |
# | **character** | `"Hello"` |
# | **numeric**   | `3.14`    |
# | **integer**   | `10L`     |
# | **logical**   | `TRUE`    |
# | **complex**   | `2 + 3i`  |

# Character
name <- "Marufa"
# Numeric
height <- 5.4
# Integer
age <- 24L
# Logical
is_student <- TRUE
is_teacher <- FALSE
# Complex
z <- 2 + 3i
# Type Checking
x <- 10
class(x)
typeof(x)


