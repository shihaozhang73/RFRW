# RFRW: Random Forests by Random Weights

`RFRW` is an R package that implements Random Forests by Random Weights for nonlinear time series modelling. It avoids the bootstrap resampling procedure in the original random forests that break the serial dependence structure, whilst incorporates independent random weights to reduce correlations among trees.

## Authors

Shihao Zhang, Zudi Lu, and Chao Zheng

## Package installation

To install `RFRW` from GitHub, use the `devtools` package:

``` r
# (optional) quiet = TRUE to mask c++ compilation messages
devtools::install_github("shihaozhang73/RFRW", quiet = T)
```

## The original package

`randomForest` (<https://cran.r-project.org/web/packages/randomForest/randomForest.pdf>) implements Breiman's random forest algorithm (based on Breiman and Cutler's original Fortran code) for classification and regression.

