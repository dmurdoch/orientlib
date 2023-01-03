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

\section{Release History}{
\itemize{
\item{Version 0.9}{
\itemize{
\item{-}{Added CITATION file, dropped djmrgl support.}
}}

\item{Versions 0.3 to 0.8}{
\itemize{

\item{-}{Changes for CRAN compliance and minor corrections.}
}}

\item{Version 0.2}{
\itemize{

\item{-}{Added \code{mean} and \code{weighted.mean}.}

\item{-}{Made \code{orientation} descend from \code{vector}.}

\item{-}{Added \code{[[} methods.}

\item{-}{Changed default look of boats.}

\item{-}{Made \code{rotmatrix} etc. into conversion functions between
orientation types.}

\item{-}{Added \code{eulerzxz} class.}

\item{-}{Added various parameters to \code{boat3d}.}

\item{-}{Added \code{\link{orientlm}} regression function plus transpose \code{t()} method.}

\item{-}{Added \code{\link[rgl:rgl-package]{rgl}} and \code{\link[scatterplot3d]{scatterplot3d}} support to \code{\link{boat3d}} function.}

\item{-}{Added \code{\link{skewmatrix}}.}
}}

\item{Version 0.1}{
\itemize{
\item{-}{First release.}
}}
}
}

\author{ Duncan Murdoch }
\note{ Plots require either the \code{\link[rgl:rgl-package]{rgl}}
or \code{\link[scatterplot3d]{scatterplot3d}} package. }


\keyword{ hplot }% at least one, from doc/KEYWORDS
\keyword{ dynamic }% __ONLY ONE__ keyword per line
\keyword{ array }
