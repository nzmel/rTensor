% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rTensor_Misc.R
\name{unmatvec}
\alias{unmatvec}
\title{Unmatvec Folding of Matrix}
\usage{
unmatvec(mat, modes = NULL)
}
\arguments{
\item{mat}{matrix to be folded into a Tensor}

\item{modes}{the modes of the output Tensor}
}
\value{
Tensor object with modes given by \code{modes}
}
\description{
The inverse operation to \code{\link{matvec-methods}}, turning a matrix into a Tensor. For a full account of matrix folding/unfolding operations, consult Kolda and Bader (2009).
}
\examples{
tnsr <- new("Tensor",3L,c(3L,4L,5L),data=runif(60))
matT1<-matvec(tnsr)
identical(unmatvec(matT1,modes=c(3,4,5)),tnsr)
}
\references{
T. Kolda, B. Bader, "Tensor decomposition and applications". SIAM Applied Mathematics and Applications 2009.
}
\seealso{
\code{\link{matvec-methods}}, \code{\link{fold}}, \code{\link{k_fold}}
}

