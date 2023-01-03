\name{orientation-class}
\docType{class}
\alias{orientation-class}
\alias{orientation}
\title{Class "orientation" }
\description{  Abstract class for vectors of various representations of SO(3) (orientation)
objects.}
\section{Objects from the Class}{A virtual Class: No objects may be created from it.}

\section{Methods}{
  \describe{
    \item{coerce}{Methods are defined to coerce \code{orientation} objects to any
    concrete descendant class.}
    \item{\code{\%*\%}}{Matrix multiplication acts on \code{orientation} objects 
    	component by component, producing compositions of the rotations.}
    \item{\code{^}}{An orientation is raised to a power by multiplying its component rotation angles
     	by that power.}
    \item{t}{The transpose of an \code{orientation} object is its 
    	component by component inverse.}
    \item{mean}{The mean of an \code{orientation} object is the nearest SO(3) matrix to 
    the element-by-element mean of its 3 x 3 rotation matrix representation.}
    \item{weighted.mean}{The weighted mean, defined analogously to the \code{mean}.}
  }
}
\author{ Duncan Murdoch }
\seealso{ \code{\link{matrix-classes}}, \code{\link{vector-classes}}}

\examples{
x <- rotmatrix(diag(3))
x
rotvector(x)
eulerzyx(x)
eulerzxz(x)
quaternion(x)
}
\keyword{classes}
