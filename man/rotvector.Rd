\name{rotvector}
\alias{rotvector}
\alias{rotvector,orientation-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Create an orientation using vectorized 3x3 matrices }
\description{
   Creates a \code{\link{rotvector-class}} object.
}
\usage{
rotvector(m)
}
\arguments{
  \item{m}{ n x 9 matrix or 9 element vector whose rows are vectorized 3x3 matrices, or an orientation object.}
}
\details{
Converts a matrix whose rows are vectorized 3x3 matrices (in column-major form)
into an \code{\link{rotvector-class}} object.
}
\value{
A \code{\link{rotvector-class}} object.
}
\author{ Duncan Murdoch }
\seealso{\code{\link{rotvector-class}}, \code{\link{rotmatrix}},  \code{\link{eulerzyx}},
\code{\link{eulerzxz}}, \code{\link{quaternion}}, \code{\link{skewvector}}, \code{\link{skewmatrix}}}
\examples{
x <- rotvector(c(0,1,0,-1,0,0,0,0,1))
x
rotmatrix(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
