outlier_RFRW <- function(x, ...) UseMethod("outlier_RFRW")

outlier_RFRW.RFRW <- function(x, ...) {
    if (!inherits(x, "RFRW")) stop("x is not a RFRW object")
    if (x$type == "regression") stop("no outlier measure for regression")
    if (is.null(x$proximity)) stop("no proximity measures available")
    outlier_RFRW.default(x$proximity, x$y)
}

outlier_RFRW.default <- function(x, cls=NULL, ...) {
    if (nrow(x) != ncol(x)) stop ("x must be a square matrix")
    n <- nrow(x)
    if (is.null(cls)) cls <- rep(1, n)
    cls <- factor(cls)
    lvl <- levels(cls)
    cls.n <- table(cls)[lvl]
    id <- if (is.null(rownames(x))) 1:n else rownames(x)
    outlier <- structure(rep(NA, n), names=id)
    for (i in lvl) {
        iclass <- cls == i
        out <- rowSums(x[iclass, iclass]^2)
        out <- n / ifelse(out == 0, 1, out)
        out <- (out - median(out)) / mad(out)
        outlier[iclass] <- out
    }
    outlier
}
