test_that("compute_NPV_works", {
  testdata = c(2,4)
  short = compute_NPV(100, time=testdata[1], 0.01)
  long = compute_NPV(100, time = testdata[2], 0.01)
  expect_equal(compute_NPV(value=0, time=100, discount=0.1), 0)
  expect_equal(compute_NPV(value=100, time=0, discount=0.1), 100)
})

# Runs all the tests at once and spits out function and which error caused it