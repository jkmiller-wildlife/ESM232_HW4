#'  Forest growth
#' @param T growth period
#' @param P forest size; initial set to 10kg/C
#' @param Ct canopy closure threshold of 100 kgC 
#' @param K carrying capacity; set to 500 kg C
#' @param r exponential growth rate; early, set to 0.01 kg/year; 
#' @param g linear growth rate; later, set to 2 kg/year
#' @param temp  air temperature; 20C
#' @return canopy closure (C) at time T
#' @examples use with ode solver
#' ode(y=P,time=c(1;300),growth, parms=parms)
#'

growth = function(T,P,Ct,K,r,g,temp) {
  # exponnential population growth calculation
  dP = r*C
  # check to see if greater than carrying capacity
  if (P > Ct) {
    dP = g
  }
  return(dP)
}
