\name{vector-classes}
\docType{class}
\alias{eulerzyx-class}
\alias{eulerzxz-class}
\alias{rotvector-class}
\alias{quaternion-class}
\alias{skewvector-class}
\alias{vector-classes}
\title{Orientation classes }
\description{ An vector of orientations, each represented by a vector of numbers.
Each of these types stores orientations as rows of a matrix in slot \code{x}.

The \code{eulerzyx} class uses 3 Euler angles in the roll-pitch-yaw scheme
(rotation about Z axis, then Y axis, then X axis).

The \code{eulerzxz} class uses 3 Euler angles in the X system scheme
(rotation about Z axis, then X axis, then Z axis again).

The \code{rotvector} class uses the 9 components of a 3 x 3 rotation matrix, stored
in column-major order.

The \code{quaternion} class uses the 4 components of a unit quaternion.

The \code{skewvector} class uses the 3 non-zero components of a skew-symmetric matrix,
where \code{(x,y,z)} stores the matrix  \code{((0, -z, y), (z, 0, -x), (-y, x, 0))}.

}
\section{Objects from the Class}{
Objects of each class can be created by calls to the corresponding constructor
functions:  \code{\link{eulerzyx}}, \code{\link{eulerzxz}}, \code{\link{rotvector}},
\code{\link{quaternion}}, \code{\link{skewmatrix}} and \code{\link{skewvector}}.

}
\section{Slots}{
  \describe{
    \item{\code{x}:}{An n x m \code{matrix} object holding the vector representations, where
    m is 3, 4, or 9. }
  }
}
\section{Extends}{
Class \code{"orientation"}, directly.
Class \code{"vector"}, by class "orientation".
}
\section{Methods}{
  \describe{
    \item{[, [<-}{Extract or assign to subvector }
    \item{[[, [[<-}{Extract or assign to an entry }
    \item{length}{The length of the \code{orientation} vector }
    \item{coerce}{Coerce methods are defined to convert all \code{\link{orientation}} descendants
    from one to another, and to coerce an appropriately shaped matrix or array to a \code{rotmatrix}}
  }
}
\author{ Duncan Murdoch }

\seealso{Constructor and coercion functions \code{\link{rotmatrix}}, \code{\link{eulerzyx}}, \code{\link{eulerzxz}}, \code{\link{rotvector}},
\code{\link{quaternion}}, and \code{\link{skewvector}}. 

Classes \code{\link{matrix-classes}}, \code{\link{orientation-class}}.
}

\examples{
x <- eulerzyx(0,pi/4,0)
x
eulerzxz(x)
rotmatrix(x)
rotvector(x)
quaternion(x)
skewvector(x)
}
\keyword{classes}
