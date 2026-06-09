# Test Discounted Revenue Function

#Test 1: higher discount rate should return lower npv

test_that("dis_rev higher rate returns lower npv", {
  expect_true(dis_rev(10000, 15, 0.05) > dis_rev(10000, 15, 0.10))
})

# Test 2: longer time scale should return larger value 

test_that("dis_rev longer time returns higher npv", {
  expect_true(dis_rev(1000, 20, 0.05) > dis_rev(1000, 10, 0.05))
})