#16. Practice Project — Student Marks
students <- c("A", "B", "C", "D", "E")
marks <- c(80, 65, 90, 75, 88)
# Find average
# Highest mark
# Lowest mark
# Student C's mark
# Add 5 bonus marks
# Students who scored above 80
mean(marks)
max(marks)
min(marks)
marks[3]
marks + 5
students[marks > 80] #FALSE FALSE TRUE FALSE TRUE (logical vector) → C, E