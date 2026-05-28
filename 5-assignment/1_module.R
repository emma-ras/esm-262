# annual_rev = Sum(hourly kW * ($/KW) [use For loop to sum (8760 values)]
# lmp = locational marginal price for nearest nodes ($/kw)
# kwh = estimated hourly production of energy (kwh)

annual_rev <- function(lmp, kwh) {
 stopifnot(length(lmp) == 8760, length(kwh) == 8760) # check for full data annual data 
  
  hourly_rev <- numeric(8760) # create storage vector 
  for (i in 1:8760) {
    hourly_rev[i]<- lmp[i] * kwh[i] # expected per hour revenue 
  }
return(sum(hourly_rev))
}



