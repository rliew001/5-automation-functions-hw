library(tidyverse)
install.packages("rlang")
library(broom)

# Functions and across ----

ds <- palmerpenguins::penguins %>% filter_out(species == "Chinstrap")
print(ds)

# Write a coefficient of variation fx (sd / mean * 100) that omits NAs and rounds the output
# Make digits an optional argument that controls how many digits to round the response
# Think about what would make a sensible default value for digits

#YOUR ANSWER HERE
fx_variation <- function(x, digits = 0) round(sd(x, na.rm = T)/mean(x, na.rm = T)*100, digits)
ds %>% summarize(across(bill_length_mm:body_mass_g, fx_variation(.x, 2)))
# Using across, find the coefficient of variation for all numeric variables except year
# rounded to 2 decimals

#YOUR ANSWER HERE

# Correct output
# bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
# <dbl>         <dbl>             <dbl>       <dbl>
# 12.2          12.0              7.44        19.4

#example for loop  
x <- 1:10
for (value in x)
  {
  print(value*2)}

map(x, ~.x*2)

example <- function(p){
  print(p*100)
}
example(x)
