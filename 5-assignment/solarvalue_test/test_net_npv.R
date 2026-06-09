# Test Net NPV Result 

# Test 1: check no entries changed sign 
test_that("no entries changed sign", {
  expect_true(all(dis_om_result >= 0),  info = "dis_om_result contains non-positive values")
  expect_true(all(dis_rev_result >= 0), info = "dis_rev_result contains non-positive values")
  expect_true(all(construction >= 0, na.rm = TRUE),   info = "construction contains non-positive values")
})

# Test 2: 