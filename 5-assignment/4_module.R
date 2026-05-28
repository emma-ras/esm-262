# Calculate net NPV of project

net_npv<- function(construction, size) {
  stopifnot(dis_om_result > 0, dis_rev_result > 0, construction > 0 ) # check no entries changed sign
  result <- dis_rev_result - dis_om_result - (construction * size)
  
 
  return(result)
}