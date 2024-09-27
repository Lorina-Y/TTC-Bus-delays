#### Preamble ####
# Purpose: Test TTC bus delay data
# Author: Hanqing Yang
# Date: 24 Semptember 2024 
# Contact: Hanq.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed?None


#### Workspace setup ####
library(tidyverse)

#### Test simulated data and analysis data ####
simulated_test_data <- read.csv("data/raw_data/simulated_data.csv")
analysis_test_data <- read.csv("data/analysis_data/analysis_data.csv")

# Test for incident to be either "Collision - TTC" or "Diversion" in simulated data
simulated_test_data$incident |>
  unique() == c("Collision - TTC" , "Diversion")


# Test for incident in simulated data
analysis_test_data$incident |>
  unique() |>
  length() == 12

# Test for NAs
all(is.na(simulated_data$number_of_delay))
