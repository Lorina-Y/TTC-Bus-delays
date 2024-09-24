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


#### Test data ####
data <- read.csv("data/raw_data/simulated_data.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))