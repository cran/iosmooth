\name{bwadap.numeric}
\alias{bwadap.numeric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Adaptive bandwidth choice for infinite order density estimates
}
\description{
Adaptive bandwidth choice for infinite order flat-top kernel density estimates.  
}
\usage{
\method{bwadap}{numeric}(x, smax = 13.49/IQR(x), n.points = 1000, Kn = 1.349 * 
    5/IQR(x), c.thresh = 2, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ A univariate data set.
}
  \item{smax}{
	The algorithm searches for smoothing parameters on the interval \code{[0, smax]}.  \code{smax} is problem dependent, and the defaults are not consistently appropriate.  
}
  \item{n.points}{
The number of points in \code{[0, smax]} at which the algorithm looks for crossing of the threshold \code{c.thresh*sqrt(log(n,10)/n)}.  If the sample characteristic function is highly oscillatory on \code{[0,smax]}, this may need to be increased.  
}
  \item{Kn}{
Tuning parameter \code{Kn} discussed in Politis (2003).  Roughly, the distance over which the sample characteristic function must stay below the threshold determined by \code{c.thresh}. 
}
  \item{c.thresh}{
The bandwidth is chosen by looking for the first time the sample characteristic function drops below \code{c.thresh*sqrt(log(n,10)/n)} and stays below that level for a distance of \code{Kn}. 
}
	\item{\dots}{
Currently unimplemented.
}
}
\details{
Returns a bandwidth, \code{h}, for use with infinite order flat-top kernel density estimates.  All frequencies higher than \code{1/h} are downweighted by the kernel.  All kernels in this package are scaled to use roughly the same bandwidth.  We recommend using this algorithm in conjunction with \code{bwplot.numeric} to double check the automated selection.  
}
\value{
Returns the estimated kernel bandwidth h.   
}
\references{
Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.
}
\author{
Timothy L. McMurry
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap}}, \code{\link{bwadap.ts}}, \code{\link{bwplot.numeric}}, \code{\link{bwplot}}
}
\examples{
x <- rnorm(100)
bwplot(x)
h <- bwadap(x)
plot(iodensity(x, h, kernel="Trap"), type="l")
rug(x)
# Add the truth in red
xs <- seq(-3, 3, len=1000)
lines(xs, dnorm(xs), col="red")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Flat-top kernel}
\keyword{Density estimate}