# ============================
# Palmer Penguins Project
# Step 5: Violin Plot
# ============================

library(tidyverse)
library(palmerpenguins)

# Load dataset
data("penguins")

# Remove missing values
penguins_clean <- drop_na(penguins)
violin_plot <- ggplot(
  penguins_clean,
  aes(x = species, y = body_mass_g, fill = species)
) +
  geom_violin(alpha = 0.7) +
  geom_boxplot(width = 0.12, fill = "white") +
  labs(
    title = "Distribution of Body Mass by Penguin Species",
    x = "Species",
    y = "Body Mass (g)"
  ) +
  theme_minimal(base_size = 14) +
  theme(legend.position = "none")
violin_plot
ggsave(
  filename = "D:/Work/Penguins_Project/Figures/Figure_2_ViolinPlot.png",
  plot = violin_plot,
  width = 8,
  height = 6,
  dpi = 300
)
