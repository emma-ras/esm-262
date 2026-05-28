# Discount annual revenue over life span of project
# annual revenue ($)
# time in the future that cost/value occurs (years)
# discount rate 
# output value in NPV $ 


dis_rev = function(annual_rev_result, year, rate) {
  # use value to compute NPV
  result <- numeric(year)
  for (i in 1:year) {
    result[i] = annual_rev_result/ (1 + rate)**i
  }
  return(sum(result))
}
