# ============================
# Palmer Penguins Project
# Step 3: Frequency Table
# ============================

library(tidyverse)

# Read the cleaned dataset
penguins_clean <- read.csv("Data/clean_penguins.csv")

# ============================
# Palmer Penguins Project
# Step 3: Frequency Table
# ============================

library(tidyverse)
library(palmerpenguins)

# Load dataset
data("penguins")


# Remove missing values
penguins_clean <- drop_na(penguins)

# Create frequency table
species_frequency <- table(penguins_clean$species)

# Display frequency table
species_frequency

