#' Annual Revenue
#'
#' compute annual revenue from annual hourly price and annual hourly kwh production
#' @param lmp  locational marginal price for nearest nodes ($/kw)
#' @param kwh description estimated hourly production of energy (kwh)
#' @references value in $
#' @author Emma Rasmussen
#' @export

annual_rev <- function(lmp, kwh) {
  stopifnot(length(lmp) == 8760, length(kwh) == 8760) # check for full data annual data
  
  hourly_rev <- numeric(8760) # create storage vector
  for (i in 1:8760) {
    hourly_rev[i]<- lmp[i] * kwh[i] # expected per hour revenue
  }
  return(sum(hourly_rev))
}

