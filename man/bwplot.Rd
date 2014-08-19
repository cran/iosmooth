\name{bwplot}
\alias{bwplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bandwidth plot
}
\description{
Generic function plotting either the absolute autocorrelation or characteristic function along with the threshold used for bandwidth choice.}
\usage{
bwplot(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
		If \code{x} is a univariate time series with class \code{ts}, bwadap returns an appropriate smoothing parameter for spectral density estimation.  If \code{x} is a univariate data vector with class \code{numeric}, bwadap returns a bandwidth for density estimation.  
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

\seealso{
\code{\link{bwadap}}, \code{\link{bwplot.numeric}}, \code{\link{bwplot.ts}}
}

\keyword{Flat-top kernel}
\keyword{Density estimate}% __ONLY ONE__ keyword per line
\keyword{Nadaraya-Watson kernel smoother}
\keyword{Spectral density estimate}