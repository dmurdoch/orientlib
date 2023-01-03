\name{eulerzyx}
\alias{eulerzyx}
\alias{eulerzyx,orientation,missing,missing-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Create an orientation using Euler angles }
\description{
  Creates an \code{\link{eulerzyx-class}} object.
}
\usage{
eulerzyx(psi, theta, phi)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{psi}{ Rotation about Z axis }
  \item{theta}{ Rotation about Y axis }
  \item{phi}{ Rotation about X axis }
}
\details{
  The rotations are expressed in radians and applied in the order Z, Y, X.
  
  If \code{theta} and \code{phi} are missing, \code{psi} is taken to be an n x 3 matrix
  (or 3 element vector) holding all 3 Euler angles; alternatively, any orientation object
  may be used.
}
\value{
An \code{\link{eulerzyx-class}} object.
}
\author{ Duncan Murdoch }

\seealso{\code{\link{eulerzyx-class}}, \code{\link{rotmatrix}}, \code{\link{rotvector}}, \code{\link{quaternion}},
\code{\link{skewvector}}, \code{\link{skewmatrix}}}
\examples{
x <- eulerzyx(c(1,0,0), c(0,1,0), c(0,0,1))
x
rotmatrix(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
