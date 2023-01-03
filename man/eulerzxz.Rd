\name{eulerzxz}
\alias{eulerzxz}
\alias{eulerzxz,orientation,missing,missing-method}
\title{ Create an orientation using Euler angles }
\description{
  Creates an \code{\link{eulerzxz-class}} object.
}
\usage{
eulerzxz(phi, theta, psi)
}
\arguments{
  \item{phi}{ Rotation about Z axis }
  \item{theta}{ Rotation about X axis }
  \item{psi}{ Further rotation about Z axis }
}
\details{
  The rotations are expressed in radians and applied in the order Z, X, Z.
  
  If \code{theta} and \code{psi} are missing, \code{phi} is taken to be an n x 3 matrix
  (or 3 element vector) holding all 3 Euler angles; alternatively, it may be an orientation object.
 
}
\value{
An \code{\link{eulerzxz-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{eulerzxz-class}}, \code{\link{eulerzyx-class}}, \code{\link{rotmatrix}}, \code{\link{rotvector}}, \code{\link{quaternion}},
\code{\link{skewvector}}, \code{\link{skewmatrix}}}
\examples{
x <- eulerzxz(c(1,0,0), c(0,1,0), c(0,0,1))
x
rotmatrix(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
