# Test Discounted operation and maintenance cost function logic 

# test 1: larger system size should return higher cost
test_that("dis_om larger system size returns higher cost", {
  expect_true(dis_om(50, 500, 15, 0.05) > dis_om(50, 100, 15, 0.05))
})

# test 2: higher om cost should return higher total cost
test_that("dis_om higher om rate returns higher cost", {
  expect_true(dis_om(100, 500, 15, 0.05) > dis_om(50, 500, 15, 0.05))
})
