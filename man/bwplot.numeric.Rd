\name{bwplot.numeric}
\alias{bwplot.numeric}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bandwidth plot for density estimation or regression
}
\description{
Plots the magnitude of the empirical characteristic function at frequencies 0 to \code{smax}.
}
\usage{
\method{bwplot}{numeric}(x, y, smax = 13.49/IQR(x), normalize = FALSE, n.points = 1000, c.thresh = 2, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A univariate data set.
}
  \item{y}{
A vector of responses, for regression only.
}
  \item{smax}{
	The algorithm searches for smoothing parameters on the interval \code{[0, smax]}.  \code{smax} is problem dependent, and the defaults are not consistently appropriate.  
}
  \item{normalize}{
Rescale the sample characteristic function so that it is 1 at frequency 0.  Does not affect plots for density estimation.  For regression it is often better to leave this as \code{FALSE}.  
}
  \item{n.points}{
The number of points in \code{[0, smax]} at which at which the sample characteristic function is calculated.  If the sample characteristic function is highly oscillatory on \code{[0,smax]}, this may need to be increased.  
}
  \item{c.thresh}{
For regression, this is not meaningful.  For density estimation, the bandwidth is chosen by looking for the first time the sample characteristic function drops below \code{c.thresh*sqrt(log(n,10)/n)} and stays below that level for a distance of \code{Kn}.
}
	\item{\dots}{
Currently unimplemented.
}
}
\details{
Produces a plot that is helpful in choosing the bandwidth for infinite order flat-top kernel smoothers.  Roughly, the bandwidth should be chosen to let the large low frequency component pass unpreturbed while damping out smaller high frequency components.  This can be accomplished by choosing \code{h = 1/l} where \code{l} is a frequency threshold above which the sample characteristic function is negligible.  For regression, this is done heuristically.  For density estimation there is a formal recommendation, implemented in \code{\link{bwplot.numeric}}.
}
\references{
Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.

McMurry, T. L. and Politis, D. N. Minimally biased nonparametric regression and autoregression. \emph{RevStat - Statistical Journal}, 6(2):123-150, 2008
}
\author{
Timothy L. McMurry
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap}}, \code{\link{bwadap.ts}}, \code{\link{bwplot.numeric}}, \code{\link{bwplot}}}
\examples{
### Density Estimation
set.seed(123)
x <- rnorm(100)
bwplot(x, smax=8)
#Choose bandwidth roughly h=1/2
plot(iodensity(x, bw=1/2), type="l")
rug(x)

#### Nadaraya-Watson kernel regression
y <- sin(x) + .1 *rnorm(100)
bwplot(x,y, smax=12)
# Choose bandwidth roughly h = 1/2.5
plot(x, y)
lines(ioksmooth(x, y, bw = 1/2.5, kernel="SupSm"), type="l")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Flat-top kernel}
\keyword{Density estimate}% __ONLY ONE__ keyword per line
\keyword{Nadaraya-Watson kernel smoother}