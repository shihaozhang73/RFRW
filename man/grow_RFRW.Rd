\name{grow_RFRW}
\alias{grow_RFRW}
\alias{grow_RFRW.default}
\alias{grow_RFRW.randomForest}

\title{Add trees to an ensemble}

\description{
  Add additional trees to an existing ensemble of trees.
}

\usage{
\method{grow_RFRW}{randomForest}(x, how.many, ...)
}

\arguments{
  \item{x}{an object of class \code{randomForest}, which contains a
    \code{forest} component.}
  \item{how.many}{number of trees to add to the \code{randomForest}
    object.}
  \item{...}{currently ignored.}
}

\value{
An object of class \code{randomForest}, containing \code{how.many}
additional trees. 
}

\note{
The \code{confusion}, \code{err.rate}, \code{mse} and \code{rsq}
components (as well as the corresponding components in the \code{test}
compnent, if exist) of the combined object will be \code{NULL}.  
}

\seealso{\code{\link{combine}}, \code{\link{randomForest}}}

\author{Andy Liaw \email{andy_liaw@merck.com}}

\examples{
data(iris)
iris.rf <- randomForest(Species ~ ., iris, ntree=50, norm.votes=FALSE)
iris.rf <- grow_RFRW(iris.rf, 50)
print(iris.rf)
}

\keyword{regression}
\keyword{classif}
