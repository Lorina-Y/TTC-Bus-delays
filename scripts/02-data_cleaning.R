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


# Convert the Time column to a proper time format
# Parse 'Time' as hours and minutes
clean_data$Time <- hm(clean_data$Time)

# Extract the hour from the Time column
clean_data$Hour <- hour(clean_data$Time)

# Create the directory for analysis data if it doesn't exist
dir.create(here::here("./data/analysis_data"), showWarnings = FALSE)

# Write the cleaned data to new CSV files
write.csv(clean_data, here::here("./data/analysis_data/analysis_data.csv"), row.names = FALSE)


#### Save data ####
write_csv(clean_data,"data/analysis_data/analysis_data.csv")

