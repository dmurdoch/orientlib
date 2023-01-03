\name{weighted.mean-methods}
\docType{methods}
\title{ Weighted mean method }
\alias{weighted.mean-methods}
\alias{weighted.mean,ANY,ANY-method}
\alias{weighted.mean,orientation,numeric-method}
\description{The weighted mean function. }

\section{Methods}{\describe{

\item{x = "ANY", w = "ANY"}{ the standard \code{stats::\link[stats]{weighted.mean}} }

\item{x = "orientation", w = "numeric"}{ weighted mean for orientations }

}}

\details{
 The weighted mean for orientations is the nearest SO(3) matrix to the entrywise weighted mean
 of the \code{\link{rotmatrix-class}} matrices.
}
\keyword{methods}
