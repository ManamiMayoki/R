# ==============================================================================
# Script: 09_integrated_case_study.R
# Purpose: End-to-end data analysis workflow combining all previous modules
# ==============================================================================

library(dplyr)
library(ggplot2)

# Step 1: Load Dataset
data("iris")

# Step 2: Clean and Transform
iris_cleaned <- iris %>%
  rename(
    sepal_length = Sepal.Length,
    sepal_width  = Sepal.Width,
    petal_length = Petal.Length,
    petal_width  = Petal.Width,
    species      = Species
  ) %>%
  mutate(petal_ratio = petal_length / petal_width)

# Step 3: Summarize and Aggregate
case_summary <- iris_cleaned %>%
  group_by(species) %>%
  summarise(
    sample_count = n(),
    avg_petal_length = mean(petal_length, na.rm = TRUE),
    avg_petal_width  = mean(petal_width, na.rm = TRUE),
    max_ratio        = max(petal_ratio, na.rm = TRUE)
  )

print("--- Integrated Case Study Summary Statistics ---")
print(case_summary)

# Step 4: Visualize
final_plot <- ggplot(iris_cleaned, aes(x = petal_length, y = petal_width, color = species)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Iris Species Petal Metric Distribution",
    subtitle = "Integrated workflow demonstration plot",
    x = "Petal Length (cm)",
    y = "Petal Width (cm)",
    color = "Species"
  ) +
  theme_bw()

print(final_plot)