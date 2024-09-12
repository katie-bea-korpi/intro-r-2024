library(dplyr)
library(tidyr)
library(ggplot2)
library(tidycensus) #acts as gateway to the Census API for ACS & Ceniial data
                    # for more info: https://walker-data.com/tidycensus/

#### Run on first se if not already stored in R ####
census_api_key("d22", install=T) ## installs into R user environment
readRenviron("~/.Renviron")
#####

#### User functions ####

####

# get a searchable census variable table
v19 <- load_variables(2019, "acs5")
v19 |> filter(grepl("^B08006_", name)) |>
  print(n=25)

# get the data for transit, wfh, and total workers ----
# ?get_acs to discover variables
comm_19_raw <- get_acs(geography = "tract",
                       variables = c(wfh = "B08006_017",
                                     transit = "B08006_008",
                                     tot = "B08006_001"),
                       county = "Multnomah",
                       state = "OR",
                       year = 2019,
                       survey = "acs5",
                       geometry = FALSE)  # can retrieve library(sf) 
                                            #spatial geoms pre-joined
comm_19_raw

#
comm_19 <- comm_19_raw |>
  pivot_wider(id_cols = GEOID, 
              names_from = variable,
              values_from = estimate:moe)
comm_19

