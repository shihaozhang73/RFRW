grow_RFRW <- function(x, ...) UseMethod("grow_RFRW")

grow_RFRW.default <- function(x, ...)
  stop("grow has not been implemented for this class of object")

grow_RFRW.RFRW <- function(x, how.many, ...) {
  y <- update(x, ntree=how.many)
  combine_RFRW(x, y)
}
