
#' @param species individuals per species
#' @param total sum of all individuals across all species
#' @return index (D)


index = function(species_name, individuals) {
  total = sum(individuals)
  # here's where I calculate Simpson's index
  result = 1 - sum((individuals/total)^2)
  frequent <- which.max(individuals)
  return(list(simpson = result, frequent = species_name[frequent], distinct = length(individuals))) 
}

