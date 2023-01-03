\name{rotmatrix}
\alias{rotmatrix}
\alias{rotmatrix,orientation-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Create an orientation using Euler angles }
\description{
    Creates a \code{\link{rotmatrix-class}} object.
}
\usage{
rotmatrix(a)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{ A 3 x 3 matrix or 3 x 3 x n array of matrices or an orientation object. }
}
\value{
A \code{\link{rotmatrix-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{rotmatrix-class}},  \code{\link{rotvector}}, \code{\link{eulerzyx}}, 
\code{\link{eulerzxz}}, \code{\link{quaternion}}, \code{\link{skewvector}}, \code{\link{skewmatrix}}}
\examples{
x <- rotmatrix(matrix(c(1,0,0, 0,1,0, 0,0,1), 3, 3))
x
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
