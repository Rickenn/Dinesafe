#### Preamble ####
# Purpose: Tests Min Inspections and Latitude and Longitude
# Author: Ruikang Wang(1008238872)
# Date: 27 September 2024
# Contact: ruikang.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: tidyverse, dplyr, ggplot2
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(ggplot2)
library(dplyr)
library(here)



#### Import data ####
simulate <- read_csv(here("data", "raw_data", "raw_simulate_data.csv"))



#### Test data ####
#If data has missing value, or data type is not i want
if (any(is.na(simulate))) {
  print("The dataset has missing values.")
  print(colSums(is.na(simulate)))
#If data is work
} else {
ggplot(simulate, aes(x = Longitude, y = Latitude, color = factor(Min_Inspections_Per_Year))) +
  geom_point(alpha = 0.6, size = 3) +
  labs(
    title = "Simulation",
    x = "Latitude",
    y = "Longitude",
    color = "Min. Inspections Per Year"
  ) +
  scale_color_manual(values = c("1" = "brown", "2" = "gray", "3" = "pink", "4" = "orange", "5" = "red")) +
  theme_minimal() #Create a scatter plot
}
