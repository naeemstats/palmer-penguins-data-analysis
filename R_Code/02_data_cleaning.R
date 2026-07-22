# ============================
# Palmer Penguins Project
# Step 2: Data Cleaning
# ============================

library(tidyverse)
library(palmerpenguins)

# Load dataset
data("penguins")
penguins_clean <- drop_na(penguins)
dim(penguins_clean)
write.csv(
  penguins_clean,
  "D:/Work/Penguins_Project/Data/clean_penguins.csv",
  row.names = FALSE
)

