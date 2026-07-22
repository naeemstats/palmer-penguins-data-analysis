library(tidyverse)
library(palmerpenguins)
# Load Packages
library(tidyverse)
library(palmerpenguins)

# Load Dataset
data("penguins")

glimpse(penguins)
dim(penguins)
names(penguins)
summary(penguins)
colSums(is.na(penguins))
