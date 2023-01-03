\name{rotation.distance}
\alias{rotation.distance}
\alias{rotation.angle}
\title{ Rotation angle or distance }
\description{
Calculates the angle (in radians) of the rotation taking one orientation to
another.
}
\usage{
rotation.angle(x)
rotation.distance(x, y)
}
\arguments{
  \item{x,y}{ Two orientation objects }
}
\value{
\code{rotation.distance} returns a vector of length \code{max(length(x), length(y))} 
containing the
angle of the rotation taking corresponding elements of \code{x} to \code{y} (with the
usual recycling rules if they are different lengths). 

\code{rotation.angle} is equivalent to calculating the \code{rotation.distance} to the
identity matrix.

}
\details{ If \code{y} is missing in a call to \code{rotation.distance}, 
it is treated as the identity, i.e.
\code{\link{rotation.angle}(x)} is calculated.}

\author{ Duncan Murdoch } 

\seealso{ \code{\link{orientation-class}}, \code{\link{rotation.angle}}}
\examples{
rotation.angle(eulerzyx(1,0,0))
rotation.distance(eulerzyx(1,0,0), eulerzyx(0,1,0))

}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
