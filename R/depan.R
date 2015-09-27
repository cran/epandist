#' Probability density function (pdf) for an uncensored epanechnikov distribution
#'
#' This function is simply a polynomial of second degree.
#'
#' @param x point on x-axis.
#' @param mu mean of distribution.
#' @param r half the range of the distribution, ie the distance from the mean to the smallest/largest value supported by the distribution. \code{r=5^.5} correspons to a standard deviation of 1.
#' @return point density associated with \code{x}, \code{mu} and \code{r}.
#' @keywords distribution
#' @examples
#' curve(dnorm(x),xlim=c(-3,3))
#' curve(depan(x),add=TRUE,col="green")


depan <- function(x = 0, mu = 0, r = 5^0.5) {
  # Distribution function
  if (any(r <= 0)) {
    stop("Range must be strictly positive")
  }
  ifelse (abs(x - mu) < r,
          3/4 * (1 - ((x - mu)/r)^2)/r,
          0
          )

}
