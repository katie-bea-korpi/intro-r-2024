#### Practice Problem: Loading and manipulating a data frame ####
# Don't forget: Comment anywhere the code isn't obvious to you!

# Load the readxl and dplyr packages
View(icebreaker_answers)  # look at the table of answers from day 1
library(dplyr)  # I'm not sure, but I think this adds the dplyr thing
library(readxl)  #I'm not sure, but I guess this loads the ability to read excel

# Use the read_excel function to load the class survey data
 # this was wrong -----> read_excel(icebreaker_answers)
answers_to_icebreak <- read_excel("data/icebreaker_answers.xlsx")

# Take a peek!
answers_to_icebreak #shows it in the console
head(answers_to_icebreak)
tail(answers_to_icebreak)

# Create a travel_speed column in your data frame using vector operations and 
#   assignment
answers_to_icebreak$travel_speed <- (answers_to_icebreak$travel_distance / 
                                       answers_to_icebreak$travel_time * 60)
# this is speed in miles per hour
# this is wrong ---> survey_results <- data.frame(a = travel_mode,
                            # b = travel_time,
                            # c = travel_distance,
                             #d = serial_comma)
#travel_mode |> travel_mode   
#summarize(travel_mode)
summary(answers_to_icebreak)
boxplot(answers_to_icebreak$travel_speed ~ answers_to_icebreak$travel_mode)
hist(answers_to_icebreak$travel_speed)

# Look at a summary of the new variable--seem reasonable?
answers_to_icebreak |>

# Choose a travel mode, and use a pipe to filter the data by your travel mode
answers_to_icebreak |> filter(travel_mode == "light rail")
  
# Note the frequency of the mode (# of rows returned)

# Repeat the above, but this time assign the result to a new data frame

# Look at a summary of the speed variable for just your travel mode--seem 
#   reasonable?

# Filter the data by some arbitrary time, distance, or speed threshold
answers_to_icebreak |> filter(travel_speed > 20)

# Stretch yourself: Repeat the above, but this time filter the data by two 
#   travel modes (Hint: %in%)

