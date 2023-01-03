\name{index-methods}
\docType{methods}
\alias{[,rotmatrix-method}
\alias{[,rotvector-method} 
\alias{[,eulerzyx-method}
\alias{[,quaternion-method} 
\alias{[,skewvector-method}
\alias{[,skewmatrix-method}
\alias{[,eulerzxz-method}
\alias{[[,rotmatrix-method}
\alias{[[,rotvector-method}
\alias{[[,eulerzyx-method}
\alias{[[,quaternion-method}
\alias{[[,skewvector-method}
\alias{[[,skewmatrix-method}
\alias{[[,eulerzxz-method}
\alias{[[<-,rotmatrix-method}
\alias{[[<-,rotvector-method}
\alias{[[<-,eulerzyx-method}
\alias{[[<-,quaternion-method}
\alias{[[<-,skewvector-method}
\alias{[[<-,skewmatrix-method}
\alias{[[<-,eulerzxz-method}
\alias{[<-,rotmatrix-method}
\alias{[<-,rotvector-method}
\alias{[<-,eulerzyx-method}
\alias{[<-,quaternion-method}
\alias{[<-,skewvector-method}
\alias{[<-,skewmatrix-method}
\alias{[<-,eulerzxz-method}
\title{ Methods for indexing orientations }
\description{ Methods are defined for indexing all types of orientations. }
\details{Single bracket indexing (e.g. \code{x[1:3]}) creates a new
orientation object of the same class as the original by selecting the
appropriate entries.  Double bracket indexing (e.g. \code{x[[3]]}) extracts
the chosen data as a matrix or vector, depending on the class of the orientation. }

\keyword{methods}

