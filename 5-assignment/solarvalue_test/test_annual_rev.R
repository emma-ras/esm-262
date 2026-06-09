# Annual Revenue Test

# Test 1: Check input kwh starts at midnight & does not include night production

test_that("annual_rev kwh input starts at midnight check",
          {
            expect_equal(solardf_clean$kwh[1:5], c(0,0,0,0,0))
          })

# Test 2: Check input LMP data is correct magnitude 

test_that("annual_rev lmp input per kwh magnitude",
          {
            expect_true(all(solardf_clean$lmp < 10 ))
          })


