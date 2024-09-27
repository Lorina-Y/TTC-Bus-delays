#### Preamble ####
# Purpose: Simulates number of TTC delay
# Author: Hanqing Yang
# Date: 24 Semptember 2024 
# Contact: Hanq.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed?None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(304)

###Start and end date###
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-08-31")

###number of dates that TTC delaied###
number_of_dates <- 100

###simulated data###
#simulated a tibble with column date,incident, days of the week and number of delay:
days_of_week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

simulated_data <- tibble(
  dates = as.Date(
    runif(
      n = number_of_dates,
      min = as.numeric(start_date),
      max = as.numeric(end_date)
    ),
    origin = "1970-01-01"
  ),
  incident = c(rep("Collision - TTC", 50), 
               rep("Diversion", 50)),
  day = sample(days_of_week, size = 100, replace = TRUE),
  number_of_delay = rpois(n = number_of_dates, lambda = 15)
  )


#### Write_csv
write_csv(simulated_data, file = "data/raw_data/simulated_data.csv")



