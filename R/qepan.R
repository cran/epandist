#' Quantile function for an uncensored epanechnikov distribution
#'
#' The inverse of this function is \code{pepan}.
#'
#' @param p probability.
#' @param mu mean of distribution.
#' @param r half the range of the distribution, ie the distance from the mean to the smallest/largest value supported by the distribution. \code{r=5^.5} corresponds to a standard deviation of 1.
#' @return the quantile associated with \code{x}, \code{mu} and \code{r}.
#' @keywords distribution
#' @examples
#' qepan(p=.25,mu=100,r=10) #Calculates the lower quartile of an epan-distributed variable


qepan<-function(p,mu=0,r=5^0.5){
  if (any(r <= 0)) {
    stop("Range must be strictly positive")
  }
  if (any(abs(p-.5)>.5)) {
    stop("p must be between 0 and 1")
  }

    (2*cos(acos(1-2*p)/3-2*pi/3))*r+mu
}
