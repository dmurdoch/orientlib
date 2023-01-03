\name{nearest}
\alias{nearest.SO3}
\alias{nearest.orthog}
\title{ Find nearest SO(3) or orthogonal matrix. }
\description{
Converts arbitrary 3 x 3 matrices 
into the nearest SO(3) or orthogonal matrix.
}
\usage{
nearest.SO3(x)
nearest.orthog(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ 3 x 3 matrices stored in a 3 x 3 x n array) }
}
\details{
Uses Stephens' (1979) algorithm to find the nearest (in entry-wise Euclidean sense)
SO(3) or orthogonal matrix to a given matrix.
} 
\value{
\code{nearest.SO3} produces an \code{\link{orientation-class}} object holding the closest orientations.

\code{nearest.orthog} produces a 3 x 3 x n array of orthogonal matrices.
}
\references{ Stephens (1979).  Vector correlation.  \emph{Biometrika} 66, 41-48.}
\author{ Duncan Murdoch }

\seealso{\code{\link{orientation-class}}}
\examples{
x <- matrix(rnorm(9), 3,3)
nearest.orthog(x)
nearest.SO3(x)
x <- -x
nearest.orthog(x)
nearest.SO3(x)
}
\keyword{array }% at least one, from doc/KEYWORDS
\keyword{algebra }% __ONLY ONE__ keyword per line
