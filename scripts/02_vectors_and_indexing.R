# ==============================================================================
# Script: 02_vectors_and_indexing.R
# Purpose: Creating atomic vectors, element-wise operations, and indexing
# ==============================================================================

# 1. Vector Creation using c()
scores <- c(88, 92, 75, 60, 95)
student_names <- c("Abe", "Bob", "Cat", "Dan", "Eve")

# 2. Vector Arithmetic (Element-wise)
curved_scores <- scores + 5
print(curved_scores)

# 3. Positional Indexing (Note: R uses 1-based indexing)
first_score <- scores[1]            # Single element
top_three   <- scores[1:3]          # Range of elements
selected    <- scores[c(1, 4, 5)]   # Multiple non-sequential elements

# 4. Logical Filtering
high_scores <- scores[scores >= 90]
print(high_scores)

# 5. Named Vectors
names(scores) <- student_names
print(scores)
print(scores["Bob"]) # Retrieve by name