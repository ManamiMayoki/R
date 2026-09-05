# ==============================================================================
# Script: 08_publication_plots_ggplot2.R
# Purpose: Building structured, publication-ready graphics with ggplot2
# ==============================================================================

library(ggplot2)

# Create scatter plot with custom labels and formatting
pub_plot <- ggplot(data = mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(
    title = "Engine Displacement vs. Highway Fuel Economy",
    subtitle = "Analysis across vehicle classes",
    x = "Engine Displacement (Liters)",
    y = "Highway Mileage (MPG)",
    color = "Vehicle Class",
    caption = "Source: EPA mpg dataset"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "right"
  )

# Render plot
print(pub_plot)

# Save high-resolution graphic output
# ggsave("publication_plot.png", plot = pub_plot, width = 8, height = 6, dpi = 300)