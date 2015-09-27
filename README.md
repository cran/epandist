The epandist-package

Analyzing censored variables usually requires the use of optimization algorithms. This package provides an alternative algebraic approach to the task of determining the expected value of a random censored variable with a known censoring point. Likewise this approach allows for the determination of the censoring point if the expected value is known. These results are derived under the assumption that the variable follows an Epanechnikov kernel distribution with known mean and range prior to censoring. Statistical functions related to the uncensored Epanechnikov distribution are also provided by this package.

In order to install this package from CRAN type 'install.packages("epandist")' in the R-console. Upon installation the package needs to be loaded with the command 'require("epandist")'

The epandist-package contains the following functions:

-   'depan()': Probability density function (pdf) for an uncensored epanechnikov distribution

-   'pepan()': Cumulative distribution function (cdf) for an uncensored epanechnikov distribution

-   'qepan()': Quantile function for an uncensored epanechnikov distribution

-   'repan()': Generate random uncensored epanechnikov-distributed data

-   'evepan()': Calculate expected value for a left-censored variable

-   'cepan()': Calculate censoring point

Please refer to the help-files and the vignette for examples.
