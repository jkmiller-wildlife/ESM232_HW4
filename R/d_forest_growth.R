#'  Forest growth
#' @param C forest size; initial set to 10kg/C
#' @param canopy_ct canopy closure threshold of 100 kgC 
#' @param K carrying capacity; set to 500 kg C
#' @param r exponential growth rate; early, set to 0.01 kg/year; 
#' @param g linear growth rate; later, set to 2 kg/year
#' @param air_T  air temperature; 20C
#' @return change in canopy closure (dC) as list


dforest_growth <- function(time, C, parms) {
  dC = ifelse( C < parms$canopy_ct, parms$r*C, parms$g)
  dC = ifelse( parms$air_T < 0, 0, dC)
  dC = ifelse( C > parms$K, 0, dC)
  return(list(dC))
}