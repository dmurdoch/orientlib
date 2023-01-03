\name{orientlm}
\alias{orientlm}
\title{ Linear models for orientation data }
\description{
  Regression models for matched pairs of orientations.
}
\usage{
orientlm(observed, leftformula, trueorient = rotmatrix(diag(3)), 
         rightformula, data = list(), subset, weights, na.action, 
         iterations = 5)
}
\arguments{
  \item{observed}{ Observed orientations }
  \item{leftformula}{ Formula for ``left'' model (see below) }
  \item{trueorient}{ ``True'' orientation (see below) }
  \item{rightformula}{ Formula for ``right'' model (see below) }
  \item{data}{ Optional data frame for predictors in linear model }
  \item{subset}{ Optional logical vector indicating subset of data }
  \item{weights}{ Optional weights }
  \item{na.action}{ Optional NA function for predictors }
  \item{iterations}{ How many iterations to use.  Ignored unless both 
  	\code{leftformula} and \code{rightformula} are specified.}
}
\details{
The Prentice (1989) model for matched pairs of orientations was

\deqn{E(V_i) = k A_1^t U_i A_2}{E(Vi) = k t(A1) \%*\% Ui \%*\% A2}

where \eqn{V_i}{Vi} is the observed orientation, \eqn{A_1}{A1} and \eqn{A_2}{A2} are orientation matrices,
and \eqn{U_i}{Ui} is the ``true'' orientation, and \eqn{k} is a constant.  It was assumed that
errors were symmetrically distributed about the identity matrix.

This function generalizes this model, allowing \eqn{A_1}{A1} and \eqn{A_2}{A2} to depend on
regressor variables through \code{leftformula} and \code{rightformula} respectively.  
These formulas should include the predictor variables (right hand side) only, e.g. use
\code{~ x + y + z} rather than \code{response ~ x + y + z}.  Specify the response using
the \code{observed} argument.  If 
both formulas are \code{~ 1}, i.e. intercepts only, then Prentice's original model is 
recovered.  More general models are fit by coordinatewise linear regression in the \code{\link{rotmatrix}}
representation of the orientation, with fitted values projected onto SO(3) using the 
\code{\link{nearest.SO3}} function.

When both left and right models are given, Prentice's iterative approach is used with
a fixed number of iterations.  Note that
Shin (1999) found that Prentice's scheme sometimes fails to find the 
global minimum; this function presumably suffers from the same failing.
}
\value{
  Returns a list containing the following components:
  \item{leftfit }{Result of \code{\link[stats]{lm}} call based on \code{leftformula}}
  \item{rightfit }{Result of \code{\link[stats]{lm}} call based on \code{rightformula}}
  \item{A1 }{Fitted values of \eqn{A_1}{A1} for each observation}
  \item{A2 }{Fitted values of \eqn{A_2}{A2} for each observation}
  \item{predict}{Fitted values of \eqn{A_1^t U_i A_2}{t(A1) \%*\% Ui \%*\% A2} for each observation}
}
\references{ 
Prentice, M.J. (1989).  Spherical regression on matched pairs of orientation statistics.
JRSS B 51, 241-248.

Shin, H.S.H. (1999).  Experimental Design for Orientation Models.  PhD thesis, Queen's University.
}
\author{ Duncan Murdoch }
\examples{
x <- rep(1:10,10)
y <- rep(1:10,each=10)
A1 <- skewvector(cbind(x/10,y/10,rep(0,100)))
A2 <- skewvector(c(1,1,1))
trueorientation <- skewvector(matrix(rnorm(300),100))
noise <- skewvector(matrix(rnorm(300)/10,100))
obs <- t(A1) \%*\% trueorientation \%*\% A2 \%*\% noise

fit <- orientlm(obs, ~ x + y, trueorientation, ~ 1)

context <- boat3d(A1, x, z=y, col = 'green', graphics='scatterplot3d')
boat3d(fit$A1, x, z=y, add=context)
}
\keyword{ regression }% at least one, from doc/KEYWORDS

