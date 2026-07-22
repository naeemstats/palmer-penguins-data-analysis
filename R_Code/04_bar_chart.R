# ============================
# Palmer Penguins Project
# Step 4: Bar Chart
# ============================

library(tidyverse)
library(palmerpenguins)

# Load dataset
data("penguins")

# Remove missing values
penguins_clean <- drop_na(penguins)
bar_plot <- ggplot(penguins_clean, aes(x = species)) +
  geom_bar(fill = "steelblue") +
  labs(
    title = "Distribution of Penguin Species",
    x = "Species",
    y = "Count"
  ) +
  theme_minimal(base_size = 14)
bar_plot
ggsave(
  filename = "D:/Work/Penguins_Project/Figures/Figure_1_BarChart.png",
  plot = bar_plot,
  width = 8,
  height = 6,
  dpi = 300
)
