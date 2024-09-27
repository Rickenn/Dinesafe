#### Preamble ####
# Purpose: Simulates Min Inspections and Latitude and Longitude
# Author: Ruikang Wang(1008238872)
# Date: 27 September 2024
# Contact: ruikang.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: tidyverse, dplyr
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(dplyr)



#### Simulate data ####
set.seed(872)
min_inspections <- sample(1:5, size = 1000, replace = TRUE)
latitude <- runif(1000, min = 43, max = 44)
longitude <- runif(1000, min = -79.5, max = -79)

simulated_data <- data.frame(
  Min_Inspections_Per_Year = min_inspections,
  Latitude = latitude,
  Longitude = longitude
)



#### Save data ####
write_csv(simulated_data,here("data", "raw_data", "raw_simulate_data.csv")) 




