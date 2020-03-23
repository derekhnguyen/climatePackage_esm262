## Test for avgrainfall

library(devtools)
library(testthat)
library(tidyverse)

load_all()

# Sample data
rain <- data.frame(inches = c(12, 200, 123, 56, 33),
                   us = c(3, 5, 6, 7, 8))

# Call function


# confirm if function works

testthat::test_that("avgrainfall_works", {
  rain <- data.frame(inches = c(12, 200, 123, 56, 33),
                     us = c(3, 5, 6, 7, 8))

  expect_equal(avgrainfall() > 0 )

  expect_type(sample_df$rain, "double")

  fake_data = data.frame(fake_rain = c(120, 5, 86, 33))


  expect_equal(avgrainfall(fake_data), 3)



})

