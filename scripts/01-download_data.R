#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Hanqing Yang
# Date: 24 Semptember 2024 
# Contact: Hanq.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed?None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####


# get package
package <- show_package("e271cdae-8788-4980-96ce-6a5c95bc6618")

# get all resources for this package
resources <- list_package_resources("e271cdae-8788-4980-96ce-6a5c95bc6618")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
#datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
#str(resources)
#head(resources,20)
data <- resources %>%
  filter(row_number() == 12) %>%
  get_resource()
warnings()

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "data/raw_data/TTCdaley_raw_data.csv") 
         
