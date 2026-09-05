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
class(x) #class = what kind of thing is it? → numeric
typeof(x) #typeof = how is it stored internally? → double


# 6. Important Special Values
#R has some special values you'll encounter constantly.
# 1. NA - Missing value.
y <- c(10, 20, NA, 40)
# 2. NULL - Absence of a value.
z <- NULL
# 3. Inf - Infinity.
10 / 0
# 4. NaN - Not a Number.
0 / 0


# 7. Vectors
# one-dimensional collection of values of the same basic type.
c()  # c means combine.
score <- c(80, 75, 90, 85, 70)
score


# 8. Vector Indexing
marks <- c(80, 75, 90, 85)
# 80   75   90   85
#  ↑    ↑    ↑    ↑
#  1    2    3    4
marks[1]
marks[c(1, 3)] #Get multiple elements
marks[2:4] #Get a range of elements
marks[length(marks)]


# 9. Creating Sequences
1:10 #outputs 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
seq(1, 10, by = 2) #outputs 1, 3, 5, 7, 9


# 10. Repeating Values
#Use rep()
rep(5, times = 3) #outputs 5, 5, 5
rep(c(1, 2), times = 3) #outputs 1 2 1 2 1 2


# 11. Vectorized Operations
# Vectorization → performing an operation on an entire vector at once.
# This is one of the things that makes R powerful for data analysis.
ages <- c(10, 20, 30, 40)
ages * 2


# 12. Basic Statistical Functions
marks <- c(80, 75, 90, 85, 70)
mean(marks) #Mean
median(marks) #Median
sum(marks) #Sum
min(marks) #Minimum
max(marks) #Maximum
length(marks) #Length
sd(marks) #Standard Deviation
var(marks) #Variance
summary(marks) #Summary


# 13. Comparison Operators
# | Operator | Meaning       |
# | -------- | ------------- |
# | `>`      | greater than  |
# | `<`      | less than     |
# | `==`     | equal to      |
# | `!=`     | not equal     |
# | `>=`     | greater/equal |
# | `<=`     | less/equal    |
10 > 5
10 < 5
10 == 10
10 != 5
10 >= 10
10 <= 5
# =(assignment) is different from ==(comparison). 10 = 5 will give an error, but 10 == 5 will return FALSE.


# 14. Logical Operators
# & → AND
# | → OR
# ! → NOT
age <- 24
age >= 18 & age <= 30


# 15. Working with NA
marks <- c(80, 75, NA, 90, 85)
mean(marks)
mean(marks, na.rm = TRUE) #mean(marks, na.rm = TRUE)


#
