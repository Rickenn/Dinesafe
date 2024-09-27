#### Preamble ####
# Purpose: Downloads and saves the data from Open Toronto "Dinesafe"
# Author: Ruikang Wang(1008238872)
# Date: 27 September 2024
# Contact: ruikang.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: tidyverse, dplyr, opendatatoronto, here, readr
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(here)
library(readr)


#### Download data ####
package <- show_package("b6b4f3fb-2e2c-47e7-931d-b87d22806948")

resources <- list_package_resources("b6b4f3fb-2e2c-47e7-931d-b87d22806948")

datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

data <- filter(datastore_resources, row_number()==1) %>% get_resource()




#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data,here("data", "raw_data", "raw_dinesafe_data.csv")) 




