# ==============================================================================
# Script: 07_data_aggregation_summarise.R
# Purpose: Grouping data and computing summary statistics
# ==============================================================================

library(dplyr)

# Using built-in 'mtcars' dataset
data("mtcars")

# Grouped summaries
summary_metrics <- mtcars %>%
  group_by(cyl) %>%
  summarise(
    count = n(),
    mean_mpg = mean(mpg, na.rm = TRUE),
    median_hp = median(hp, na.rm = TRUE),
    sd_wt = sd(wt, na.rm = TRUE)
  ) %>%
  arrange(desc(mean_mpg))

print(summary_metrics)