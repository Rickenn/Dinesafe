#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(here)



#### Clean Data ####
data <- read_csv(here("data", "raw_data", "raw_data.csv"))
dinesafe <- data %>% 
  select(`Establishment ID`, `Establishment Name`, 
         `Establishment Type`, `Establishment Status`,
         `Min. Inspections Per Year`, `Infraction Details`,
         Severity, Action, `Amount Fined`, Latitude, Longitude)




#### Save data ####
write_csv(dinesafe, here("data", "analysis_data", "analysis_data.csv"))
