\name{orientlib}
\alias{orientlib}
\title{ Orientation Library }
\description{
  Representations, conversions and display of orientation data.
}

\details{
  This package contains methods for working with orientation data, i.e.
  data from SO(3).  The basic abstract class is the \code{\link{orientation}};
  there are several concrete classes (\code{\link{rotmatrix}}, 
  \code{\link{rotvector}}, \code{\link{eulerzyx}}, \code{\link{eulerzxz}}, 
  \code{\link{quaternion}}, \code{\link{skewmatrix}} and \code{\link{skewvector}}) 
  storing different 
  representations of orientations.

  Methods are defined to get the length of a vector of orientations, as well
  as to extract and replace elements, and to multiply orientations and raise 
  them to real powers.

  There are also utility functions \code{\link{rotation.distance}},
  \code{\link{rotation.angle}}, \code{\link{nearest.orthog}}, 
  \code{\link{nearest.SO3}}.
  
  There is a plotting method \code{\link{boat3d}} to display orientation data
  in a 3D plot, and a linear modelling function \code{\link{orientlm}}.
}

\author{ Duncan Murdoch }
\note{ Plots require either the \code{\link[rgl:rgl-package]{rgl}}
or \code{\link[scatterplot3d]{scatterplot3d}} package. }


\keyword{ hplot }% at least one, from doc/KEYWORDS
\keyword{ dynamic }% __ONLY ONE__ keyword per line
\keyword{ array }
