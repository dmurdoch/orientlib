\name{skewvector}
\alias{skewvector}
\alias{skewvector,orientation-method}
\title{ Create an orientation using the entries in a skew-symmetric matrix representation }
\description{
  Creates a \code{\link{skewvector-class}} object.
}
\usage{
skewvector(m)
}
\arguments{
  \item{m}{ n x 3 matrix or 3 element vector containing a the entries of a skew-symmetric matrix,
  	    or an orientation object.}
}
\details{
The rows of \code{m} are 3 element vectors (x,y,z) interpreted as 
follows:  the matrix exponential of the matrix \code{((0, -z, y), (z, 0, -x), (-y, x, 0))}
is the SO(3) matrix.

}
\value{
A \code{\link{skewvector-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{skewvector-class}}, \code{\link{skewmatrix}}, \code{\link{rotmatrix}}, \code{\link{rotvector}}, \code{\link{eulerzyx}},
		 \code{\link{eulerzxz}}, \code{\link{quaternion}}}
\examples{
x <- skewvector(c(1,0,0))
x
rotmatrix(x)
rotation.angle(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
