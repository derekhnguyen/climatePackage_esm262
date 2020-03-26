## Test for minmaxtemp

library(devtools)
library(testthat)
library(tidyverse)

load_all()

# Sample data
temps = runif(min = 22, max = 128, n = 265)
temp = data.frame(temps)

# Call function


# confirm if function works

testthat::test_that("minmaxtemp_works", {
  temps = runif(min = 22, max = 128, n = 265)
  temp = data.frame(temps)


expect_true(temp$min > 21)

expect_true(temp$max < 129)


fake_temps = data.frame(temps_norm = rnorm(265, mean = 125, sd = 2))

expect_length(fake_temps$temps_norm, 5)


})
