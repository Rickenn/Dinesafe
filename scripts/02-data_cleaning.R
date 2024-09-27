#### Preamble ####
# Purpose: Cleans the raw data of "Dinesafe"
# Author: Ruikang Wang(1008238872)
# Date: 27 September 2024
# Contact: ruikang.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: tidyverse, here
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(here)



#### Clean Data ####
data <- read_csv(here("data", "raw_data", "raw_dinesafe_data.csv"))
dinesafe <- data %>% 
  select(`Establishment ID`, `Establishment Name`, 
         `Establishment Type`, `Establishment Status`,
         `Min. Inspections Per Year`, `Infraction Details`,
         Severity, Action, `Amount Fined`, Latitude, Longitude)




#### Save data ####
write_csv(dinesafe, here("data", "analysis_data", "analysis_data.csv"))
