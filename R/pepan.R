#' Cumulative distribution function (cdf) for an uncensored epanechnikov distribution
#'
#' The inverse of this function is \code{qepan}.
#'
#' @param x point on x-axis.
#' @param mu mean of distribution.
#' @param r half the range of the distribution, ie the distance from the mean to the smallest/largest value supported by the distribution. \code{r=5^.5} corresponds to a standard deviation of 1.
#' @return probability of value below \code{x} given \code{mu} and \code{r}.
#' @keywords distribution
#' @examples
#' pepan(x=-1.96,mu=0,r=5^.5) #Probability of a value below -1.96


pepan <- function(x = 0, mu = 0, r = 5^0.5) {
  # Cumulative distribution function
  if (any(r <= 0)) {
    stop("Range must be strictly positive")
  }

  alpha <- (x - mu)/r

  ifelse(abs(alpha)<=1,
         1/4 * (-alpha^3 + 3 * alpha + 2),
         ifelse(alpha< -1,
               0,
               1
                )
         )

}
