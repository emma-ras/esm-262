spring_summary <- function (clim_data, spring_months = c(4:6), spring_out = FALSE) 
{
  library(tidyverse)
  #stopifnot(all(c("month", "year", "tavg") %in% names(clim_data)))
  spring = clim_data %>% subset(month %in% spring_months)
  S_means_all = spring %>% group_by(year) %>% select(year, 
                                                     tavg) %>% summarize_all(list(mean = mean))
  S_extremes = spring %>% summarize(Tavg_spring = mean(tavg), 
                                    Tmax_spring = max(tavg), Tmin_spring = min(tavg), warmest_spring = year[which.max(tavg)], 
                                    coldest_spring = year[which.min(tavg)])
  if (spring_out) 
    return(list(as.list(S_extremes), S_means_all[, c("year", 
                                                     "mean")]))
  else return(as.list(S_extremes))
}
