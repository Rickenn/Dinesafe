#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(here)
library(readr)
library(ggplot2)



#### Download data ####
package <- show_package("b6b4f3fb-2e2c-47e7-931d-b87d22806948")

resources <- list_package_resources("b6b4f3fb-2e2c-47e7-931d-b87d22806948")

datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

data <- filter(datastore_resources, row_number()==1) %>% get_resource()




#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data,here("data", "raw_data", "raw_data.csv")) 




