\name{bwadap.ts}
\alias{bwadap.ts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Adaptive bandwidth choice for infinite order spectral density estimates
}
\description{
Adaptive bandwidth choice for spectral density estimation with infinite order flat-top kernels.
}
\usage{
\method{bwadap}{ts}(x, Kn = 5, c.thresh = 2, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A univariate time-series.
}
  \item{Kn}{
Tuning parameter Kn discussed in Politis (2003).  Roughly, the number of lags the autocorrelation function must stay below the threshold determined by \code{c.thresh}. 
}
  \item{c.thresh}{
The bandwidth is chosen by looking for the first time the autocorrelation function drops below \code{c.thresh*sqrt(log(n,10)/n)} and stays below that level for \code{Kn} lags. 
}
  \item{\dots}{
Currently unimplemented.
}
}
\details{
Returns a smoothing parameter \code{l}; all lags after lag \code{l} will be down-weighted by the kernel's taper.  All kernels in this package are scaled to use roughly the same smoothing parameter.  
}
\value{
Smoothing parameter \code{l}. 
}
\references{
Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.	
}
\author{
Timothy L. McMurry
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap}}, \code{\link{bwadap}}, \code{\link{bwplot}}, \code{\link{bwplot.ts}}
}
\examples{
x <- arima.sim(list(ar=.7, ma=-.3), 100)
bwplot(x)
l <- bwadap(x)
plot(iospecden(x, l), type="l")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Spectral Density }
\keyword{ Flat-top Kernel }% __ONLY ONE__ keyword per line
