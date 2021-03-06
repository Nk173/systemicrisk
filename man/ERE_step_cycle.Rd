% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{ERE_step_cycle}
\alias{ERE_step_cycle}
\title{Does one Gibbs Step on a cycle}
\usage{
ERE_step_cycle(r, c, L, lambda, p, eps = 1e-10)
}
\arguments{
\item{r}{Row indies of cycle, starting at 0 (vector of length k)}

\item{c}{Column indices of cycle, starting at 0 (vector of length k)}

\item{L}{nxn matrix with nonnegative values (will be modified)}

\item{lambda}{nxn matrix of intensities}

\item{p}{nxn matrix of probabilities (must be in [0,1] and 0 on diagonal)}

\item{eps}{Threshold for values to be interpreted as equal to 0 (default = 1e-10)}
}
\value{
no return value
}
\description{
Execute one Gibbs step on a cycle keeping
row and column sums fixed
}
\examples{
L=matrix(rexp(9),nrow=3)
lambda <- matrix(0.5,nrow=3,ncol=3)
p <- matrix(0.7, nrow=3,ncol=3)
ERE_step_cycle(r=c(0,1),c=c(1,2),L=L,lambda=lambda,p=p)
ERE_step_cycle(r=c(0,1,2),c=c(0,1,2),L=L,lambda=lambda,p=p)
ERE_step_cycle(r=c(0,1,2),c=c(2,1,0),L=L,lambda=lambda,p=p)

}

