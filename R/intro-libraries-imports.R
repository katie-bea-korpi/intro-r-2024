# Read in csv file using base R
read.csv("data/portal_stations.csv", stringsAsFactors = F) # does not convert characters to vectors 
sta_meta <- read.csv("data/portal_stations.csv", stringsAsFactors = F) # assigns data to variable
str(sta_meta) # structure of data

head(sta_meta) # prints first 6 rows of data
tail(sta_meta) # prints last 6 rows of data

nrow(sta_meta) # number of rows of data

summary(sta_meta) # summary of data, can get some information about 'NA'

# Using Data import shortcut to read in xlsx and copy/paste code
library(readxl)
icebreaker_answers <- read_excel("data/icebreaker_answers.xlsx")
View(icebreaker_answers) # formats data for viewing

library(dplyr)

odot_meta <- sta_meta |>  # Old pipe notation 
  filter(
    agency == "ODOT", 
    highwayid == 1
    )

notodot_meta <- sta_meta |>
  filter(
    agency != "ODOT"
  )

 # looking for NAs
nas_meta <- sta_meta |>
  filter(
    is.na(dectectorlocation)
  )

 # excluding NAs
real_meta <- sta_meta |>
  filter(
    !is.na(dectectorlocation)
  )


