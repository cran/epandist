#' Calculate expected value of censored variable
#'
#' This function calculates the expected value of a random left-censored epanechnikov-distributed variable with a given censoring point.
#' The inverse of this function is \code{cepan}.
#'
#' @param c censoring point.
#' @param mu mean of distribution prior to censoring.
#' @param r half the range of the distribution, ie the distance from the mean to the smallest/largest value supported by the distribution. \code{r=5^.5} corresponds to a standard deviation of 1.
#' @return the expected value associated with \code{c}, \code{mu} and \code{r}.
#' @keywords distribution
#' @examples
#' evepan(c=100,mu=100,r=10) #Expected value of an epan-distributed variable left-censored at 100


evepan <- function(c = 0, mu = 0, r = 5^0.5) {
  # Expected abatement
  if (any(r <= 0)) {
    stop("Range must be strictly positive")
  }

  alpha <- (c - mu)/r

  ev<-r/16 * (1 - alpha)^3 * (alpha + 3)+c

    ifelse (abs(alpha) <= 1,
            ev,
            ifelse(alpha < -1,
                   mu,
                   c
                   )
            )

}
