#' Annual Revenue Test
#'
#' Test if annual revenue is functioning correctly compute annual revenue from annual hourly price and annual hourly kwh production
#' @describeIn Kwh data set should start at midnight, no sun for first 5 hours resulting in 0 produced kwh 
#' @author Emma Rasmussen
#' @export

library(testthat)
library(here)
source(here("5-assignment/1_module.R"))

test_that("annual_rev kwh input starts at midnight check",
          {
            expect_equal(solardf_clean$kwh[1:5], c(0,0,0,0,0))
          })

test_that("annual_rev lmp input per kwh magnitude",
          {
            expect_true(solardf_clean$lmp < 10 ))
          })


