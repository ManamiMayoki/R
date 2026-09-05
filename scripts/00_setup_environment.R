# ==============================================================================
# Script: 00_setup_environment.R
# Purpose: Environment setup, package installation, and directory management
# ==============================================================================

# 1. Install packages (uncomment if you haven't installed them yet)
# install.packages("tidyverse")

# 2. Load primary libraries
library(tidyverse) # Loads ggplot2, dplyr, readr, tibble, tidyr, purrr, stringr, forcats

# 3. Check and display working directory
current_dir <- getwd()
cat("Current working directory:", current_dir, "\n")

# 4. Optional: Set working directory (uncomment and modify path as needed)
# setwd("path/to/your/project")

# 5. Display session details to confirm R environment state
sessionInfo()