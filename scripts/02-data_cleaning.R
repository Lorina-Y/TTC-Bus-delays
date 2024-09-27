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
#read in the data
raw_TTC_data <- read_csv("data/raw_data/TTC_bus_delay.csv")

#change column name to small letter:
head(raw_TTC_data)

#make names easier to type by change column name to small letter and remove space:
cleaned_TTC_data <- janitor::clean_names(raw_TTC_data)

head(cleaned_TTC_data)
#remove unwanted column: direction:
cleaned_TTC_data <-
  cleaned_TTC_data |> select(
    date,
    day,
    incident,
    min_delay
  )
#change column data into data datatype:
cleaned_TTC_data$date<- as.Date(cleaned_TTC_data$date, format = "%Y-%m-%d")


#look at unique value in Location and incident:
cleaned_TTC_data$incident |> unique()

###read in the data###
#count how many times each incident occur cause the delay:
cleaned_TTC_data |>
  count(incident)



#### Save data ####
write_csv(cleaned_TTC_data,"data/analysis_data/analysis_data.csv")



