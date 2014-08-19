\name{iospecden}
\alias{iospecden}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Spectral density estimation with infinite order kernels
}
\description{
Calculates a spectral density estimator using infinite order flat-top kernels.  These estimators have been shown to automatically achieve optimal rates of covergence across a wide range of scenarios.
}
\usage{
iospecden(x, l, kernel = c("Trap", "Rect", "SupSm"), x.points = seq(-pi, pi, len = 200))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A univariate time series.
}
  \item{l}{
The smoothing parameter. If missing adaptive bandwidth choice is used via \code{\link{bwadap.ts}}.  
}
  \item{kernel}{
Three flat-top kernels are implemented, described by the shape of their Fourier transforms.  "Trap" is trapezoid shaped and is the default.  The rectangular kernel is not recommended and is here for comparison only.  SupSm is infinitely differentiable in the Fourier domain.  
}
  \item{x.points}{
Points at which the spectral density is estimated.  If \code{x.points} is set to \code{NULL}, \code{iospecden} will return a function which interpolates between the estimated points.  
}
}

\value{
If \code{x.points} is not NULL, the function returns a list of length 2
\item{x}{
The \code{x} values at which the spectral density is estimated (\code{x.points} if specified).
}
\item{y}{
The estimated spectral density function at the associated \code{x} values.
}
If \code{x.points} is NULL, the function returns the estimated spectral density function rather than its values.
}

\references{
Politis, D. N., & Romano, J. P. (1995). Bias-corrected nonparametric spectral estimation . \emph{Journal of Time Series Analysis}, 16(1), 67-103.

Politis, D. N. (2003). Adaptive bandwidth choice. \emph{Journal of Nonparametric Statistics}, 15(4-5), 517-533.
}
\author{
Timothy L. McMurry
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap.ts}}, \code{\link{bwplot.ts}}
}
\examples{
x <- arima.sim(list(ar=.7, ma=-.3), 100)
bwplot(x)
plot(iospecden(x), type="l")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Spectral Density }
\keyword{ Flat-top kernel }% __ONLY ONE__ keyword per line
