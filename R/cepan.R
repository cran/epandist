#' Calculate censoring point
#'
#'This function calculates the censoring point of a random left-censored epanechnikov-distributed variable associated a given expected value.
#'The inverse of this function is \code{evepan}.
#'
#' @param ev expected value.
#' @param mu mean of distribution prior to censoring.
#' @param r half the range of the distribution, ie the distance from the mean to the smallest/largest value supported by the distribution. \code{r=5^.5} corresponds to a standard deviation of 1.
#' @return the censoring point associated with \code{ev}, \code{mu} and \code{r}.
#' @keywords distribution
#' @examples
#' cepan(ev=103,mu=100,r=16) #Expected value of an epan-distributed variable left-censored at 103




cepan <- function(ev, mu = 0, r=5^.5) {

  if (any(r <= 0)) {
    stop("Range must be strictly positive")
  }
  if (any(ev<=mu)) {
    stop("Expected value of the left-censored variable must be greater than the mean of the uncensored distribution")
  }

  c <- (ev-mu)/r

  tempvar0 <- (3^(1/2) * (27 * c^2 - 16 * c^3)^(1/2) + 9 * c)^(1/3)
  tempvar1 <- (2 * 2^(2/3) * c/3^(1/3)/tempvar0 + 1 * 2^(1/3) * tempvar0/3^(2/3) + 1)^(1/2)
  tempvar2 <- (-8 * 2^(2/3) * c/3^(1/3)/tempvar0 - 4 * 2^(1/3) * tempvar0/3^(2/3) + 8/tempvar1 + 8)^(1/2)/2
  solution_to_quad<-tempvar1 - tempvar2


  ifelse (ev < mu+r,
          solution_to_quad*r+mu,
          ev
          )


}
