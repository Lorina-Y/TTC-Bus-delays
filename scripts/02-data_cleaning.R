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
library(lubridate)

#### Clean data ####
clean_data <- read_csv("data/raw_data/TTCdaley_raw_data.csv")


#### Save data ####
write_csv(clean_data,"data/analysis_data/analysis_data.csv")

