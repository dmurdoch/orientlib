\name{matrix-classes}
\docType{class}
\alias{matrix-classes}
\alias{rotmatrix-class}
\alias{skewmatrix-class}
\title{Matrix orientation classes }
\description{ An orientation represented by 3 x 3 SO(3) matrices or 3 x 3 skew symmetric matrices }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{\link{rotmatrix}(x)} 
or \code{\link{skewmatrix}(x)}.
The objects store the matrices in a 3 x 3 x n array.
}
\section{Slots}{
  \describe{
    \item{\code{x}:}{3 x 3 x n array holding the matrices. }
  }
}
\section{Extends}{
Class \code{"orientation"}, directly.
Class \code{"vector"}, by class "orientation".
}
\section{Methods}{
  \describe{
    \item{[, [<-}{Extract or assign to subvector }
    \item{[[, [[<-}{Extract or assign to an entry }
    \item{length}{The length of the \code{orientation} vector }
    \item{coerce}{Coerce methods are defined to convert all \code{\link{orientation}} descendants
    from one to another, and to coerce an appropriately shaped matrix or array to a \code{rotmatrix}}
  }
}
\author{ Duncan Murdoch }

\seealso{\code{\link{orientation-class}}, \code{\link{vector-classes}}, \code{\link{rotmatrix}}, 
\code{\link{skewmatrix}}}

\examples{
x <- rotmatrix(matrix(c(1,0,0, 0,1,0, 0,0,1), 3, 3))
x
skewmatrix(x)
}
\keyword{classes}
