\name{bwplot.ts}
\alias{bwplot.ts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bandwidth plot for spectral density estimation
}
\description{
Plots the absolute autocorrelation function at lags 0 to \code{lag.max}.
}
\usage{
\method{bwplot}{ts}(x, lag.max = NULL, c.thresh = 2, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A univariate time series.
}
  \item{lag.max}{
The maximum lag shown on the plot.
}
  \item{c.thresh}{
The smoothing parameter is chosen by looking for the first time the sample autocorrelation function drops below \code{c.thresh*sqrt(log(n,10)/n)} and stays below that level for a distance of \code{Kn}.
}
  \item{\dots}{
Further arguments passed on to \code{plot.acf}.
}
}
\details{
Produces a plot that is helpful in choosing the bandwidth for infinite order flat-top spectral density estimates.  The smoothing parameter should be chosen to let the large small lag autocorrelations pass unpreturbed while damping out smaller higher lag correlations.  
}
\references{
Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.	
}
\author{
Timothy L. McMurry
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap}}, \code{\link{bwadap.ts}}, \code{\link{bwplot}}, \code{\link{bwplot.numeric}}
}
\examples{
set.seed(123)
x <- arima.sim(list(ar=.7, ma=-.3), 100)
bwplot(x)
bwadap(x)
# Choose a smoothing parameter of 3
plot(iospecden(x, l=3), type="l")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Spectral Density}
\keyword{Flat-top kernel}
\keyword{Smoothing parameter}% __ONLY ONE__ keyword per line
