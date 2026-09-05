# ==============================================================================
# Script: 06_data_transformation_dplyr.R
# Purpose: Data manipulation with core dplyr verbs and the pipe operator (%>%)
# ==============================================================================

library(dplyr)

# Using built-in 'starwars' dataset
data("starwars")

# Pipeline executing core verbs: filter, select, mutate, arrange
transformed_data <- starwars %>%
  # Filter: keep specific rows
  filter(species == "Human", !is.na(mass), !is.na(height)) %>%
  
  # Select: keep specific columns
  select(name, height, mass, homeworld) %>%
  
  # Mutate: create or alter variables
  mutate(
    height_m = height / 100,
    bmi = mass / (height_m^2)
  ) %>%
  
  # Arrange: sort rows by values
  arrange(desc(bmi))

# View output
head(transformed_data)