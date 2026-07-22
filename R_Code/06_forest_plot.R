# Forest Plot

library(tidyverse)
library(palmerpenguins)
library(broom)

# Load dataset
data("penguins")

# Remove missing values
penguins_clean <- drop_na(penguins)

# Linear regression
model <- lm(
  body_mass_g ~ bill_length_mm,
  data = penguins_clean
)

# Extract coefficients
forest_data <- tidy(
  model,
  conf.int = TRUE
)

# Create Forest Plot
forest_plot <- ggplot(forest_data, aes(x = estimate, y = term)) +
  geom_point(size = 3, color = "steelblue") +
  geom_errorbarh(
    aes(xmin = conf.low, xmax = conf.high),
    height = 0.2
  ) +
  geom_vline(
    xintercept = 0,
    linetype = "dashed",
    color = "red"
  ) +
  labs(
    title = "Forest Plot of Regression Coefficients",
    x = "Estimate (95% Confidence Interval)",
    y = NULL
  ) +
  theme_minimal()

# Show plot
print(forest_plot)

# Save plot
ggsave(
  filename = "D:/Work/Penguins_Project/Figures/Figure_3_ForestPlot.png",
  plot = forest_plot,
  width = 8,
  height = 5,
  dpi = 300
)