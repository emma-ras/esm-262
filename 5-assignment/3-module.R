
# size, system size (kW) 
# om, estimated operations and maintenance ($/kW/year)
# # time in the future that cost/value occurs (years)
dis_om = function(om, size, year, rate) {
  # use value to compute NPV
  result <- numeric(year)
  for (i in 1:year) {
    result[i] = (om * size)/ (1 + rate)**i
  }
  return(sum(result))
}
