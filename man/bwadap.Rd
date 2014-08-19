\name{bwadap}
\alias{bwadap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Adaptive bandwidth choice
}
\description{
Generic function for adaptive bandwidth choice.  
}
\usage{
bwadap(x, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
		If \code{x} is a univariate time series with class \code{ts}, \code{bwadap} returns an appropriate smoothing parameter for spectral density estimation.  If \code{x} is a univariate data vector with class \code{numeric}, \code{bwadap} returns a bandwidth for density estimation.  
}
  \item{\dots}{
	Further arguments passed to the methods.
}
}

\references{
Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.	
}
\author{
Timothy L. McMurry
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap.numeric}}, \code{\link{bwadap.ts}}
}

\keyword{ Spectral density estimation}
\keyword{ Density estimation }% __ONLY ONE__ keyword per line
