# Maximum and Minimum Temperature in the Mojave Desert
# function 2
#
# Create function that calculates minimum and maximum temperatures in the Mojave Desert

# Upload Packages
library(devtools)
library(roxygen2)
library(tidyverse)

#
temps = runif(min = 22, max = 128, n = 265)
temp = data.frame(temps)

#' MAX and min Temperatures
#'
#' takes min and max values from data list
#' @param df = list of temps
#' @examples maxmin_temp(df_ex_1)
#' @return max and min temp
#' @authors Derek Nguyen and Jonathan Hart
#'

maxmin_temp = function(df) {
  maxtemp = apply(df, 2, max)
  mintemp = apply(df, 2, min)
  return(list(max = maxtemp, min = mintemp))

}

# Documentation for max and min temps
#' example data created
#'
#' data from Derek Nguyen and Jonathan Hart
#' @format df with 100 rows and 1 column
#' \describe{
#' \item{temp}{recorded temps are between 22 - 128 degrees F}}
#'
#' @source: Derek Nguyen and Jonathan Hart
