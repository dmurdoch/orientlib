\name{skewmatrix}
\alias{skewmatrix}
\alias{skewmatrix,orientation-method}
\title{ Create an orientation using the entries in a skew-symmetric matrix representation }
\description{
  Creates a \code{\link{skewmatrix-class}} object.
}
\usage{
skewmatrix(a)
}
\arguments{
  \item{a}{ 3 x 3 x n array or 3 x 3 matrix containing the entries of a skew-symmetric matrix,
  	    or an orientation object.}
}
\details{
The entries \code{a[,,i]} are 3 x 3 skew-symmetric matrices.  
The matrix exponential of these give SO(3) matrices.

}
\value{
A \code{\link{skewmatrix-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{skewvector-class}}, \code{\link{skewvector}}, \code{\link{rotmatrix}}, \code{\link{rotvector}}, \code{\link{eulerzyx}},
		 \code{\link{eulerzxz}}, \code{\link{quaternion}}}
\examples{
x <- skewmatrix(matrix(c(0,1,2,-1,0,3,-2,-3,0),3,3))
x
rotmatrix(x)
skewvector(x)
rotation.angle(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
