\name{quaternion}
\alias{quaternion}
\alias{quaternion,orientation-method}
\title{ Create an orientation using quaternions }
\description{
  Creates a \code{\link{quaternion-class}} object.
}
\usage{
quaternion(m)
}
\arguments{
  \item{m}{ n x 4 matrix or 4 element vector containing a unit quaternion, or an orientation object }
}
\details{
The rows of \code{m} are 4 element unit vectors interpreted as 
follows:  the first 3 \code{(x,y,z)} define the axis of rotation,
and the last element gives the cosine of half the angle of
rotation in a counter-clockwise direction when looking down the 
axis towards the origin.
}
\value{
A \code{\link{quaternion-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{quaternion-class}}, \code{\link{rotmatrix}}, \code{\link{rotvector}}, \code{\link{eulerzyx}},
         \code{\link{eulerzxz}}, \code{\link{skewvector}}, \code{\link{skewmatrix}}}
\examples{
x <- quaternion(c(1,0,0,0))
x
rotmatrix(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
