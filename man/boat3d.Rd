\name{boat3d}
\alias{boat3d}
\title{ Draw boat glyphs for orientation data }
\description{
  Draws a stylized sailboat to represent an orientation.
}
\usage{
boat3d(orientation, x = 1:length(orientation), y = 0, 
       z = 0, scale = 0.25, col = 'red', add = FALSE, box = FALSE, axes = TRUE,
       graphics = c('rgl', 'scatterplot3d'), ...)
}
\arguments{
  \item{orientation}{ An \code{\link{orientation}} object to be shown. }
  \item{x, y, z}{ Coordinates where boats should be shown. }
  \item{scale}{ Size of boats }
  \item{col}{ Colour of boats }
  \item{add}{ Context in which to continue drawing, or \code{FALSE} to clear first.  }
  \item{box}{ Whether to draw a box around the plot }
  \item{axes}{ Whether to draw axes }
  \item{graphics}{ Which graphics package to use }
  \item{...}{ Additional graphics parameters; see Details below }
}
\details{
  For the identity orientation, the sailboats will be shown upright.
  Other orientations are shown as rotations of this glyph.
 
  The (x,y,z) coordinate appears in the middle of the sail, at the
  top of the gunwales of the boat.
  
  If the \code{\link[rgl:rgl-package]{rgl}} package is 
  installed, it will be used to draw solid faces on the boats which can be moved by the
  user.  If not, but the \code{\link[scatterplot3d]{scatterplot3d}} package is
  installed, it will be used to draw fixed wireframe boats.  This
  search order can be changed by modifying the \code{graphics} parameter.
  
  Additional graphics parameters may be passed.  If \code{\link[scatterplot3d]{scatterplot3d}} is used, these
  are passed to the \code{\link[scatterplot3d]{scatterplot3d}} function (and ignored
  when adding to an existing plot).  Extra parameters are not passed to
  \code{\link[rgl:rgl-package]{rgl}}.
  
  To add to a \code{\link[scatterplot3d]{scatterplot3d}} plot, you must pass the 
  return value from the initial plot as the value of \code{add}.  See
  the \code{\link{orientlm}} function for an example.
}
\value{
  A current
  plot number for \code{\link[rgl:rgl-package]{rgl}}, or a \code{\link[scatterplot3d]{scatterplot3d}} 
  drawing context.  In any case, an attribute named \code{graphics} is added
  to indicate the drawing device type.
}
\author{ Duncan Murdoch }
\note{ Requires the \code{\link[rgl:rgl-package]{rgl}} or 
\code{\link[scatterplot3d]{scatterplot3d}} package. }

\examples{
x <- eulerzyx(psi=c(0,pi/4,0,0), theta=c(0,0,pi/4,0), phi=c(0,0,0,pi/4))

# Need a 3D renderer; assume scatterplot3d, but others could be used

s <- boat3d(x, 0:3, axes = FALSE, graphics = 'scatterplot3d')
text(s$xyz.convert(0:3, rep(-0.5,4), rep(-0.5,4)), 
     label = c('Id','z','y','x'))
         
\dontrun{

# if the rgl package is installed, this code will work

boat3d(x, 0:3, axes = FALSE, graphics = 'rgl')
rgl::bbox3d(xat=0:3,xlab=c('Id','z','y','x'),yat=1,zat=1,color='grey')  
}
}
\keyword{ hplot }% at least one, from doc/KEYWORDS
\keyword{ dynamic }% __ONLY ONE__ keyword per line
