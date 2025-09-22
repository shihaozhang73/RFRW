# Random Forests by Random Weights (RF-RW)

Random Forests by Random Weights (RF-RW) for time series modelling.

## Package installation

To install `RF-RW` from GitHub, use the `devtools` package:

``` r
# (optional) quiet = TRUE to mask c++ compilation messages
devtools::install_github("shihaozhang73/RFRW", quiet = T)
```

## The original package

`randomForest` (<https://cran.r-project.org/web/packages/randomForest/randomForest.pdf>) implements Breiman's random forest algorithm (based on Breiman and Cutler's original Fortran code) for classification and regression.

### Authors

Andy Liaw ([andy_liaw\@merck.com](#0)) and Matthew Wiener ([matthew_wiener\@merck.com](#0)), based on original Fortran code by Leo Breiman and Adele Cutler.

### References

-   Breiman, L. (2001), *Random Forests*, Machine Learning 45(1), 5-32.

-   Breiman, L (2002), \"Manual On Setting Up, Using, And Understanding Random Forests V3.1\", <https://www.stat.berkeley.edu/~breiman/Using_random_forests_V3.1.pdf>.

