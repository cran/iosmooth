\name{sospecden}
\alias{sospecden}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Second order spectral density estimation using an infinite order pilot
}
\description{
Calculates a spectral density estimator using Parzen's piecewise cubic lag window, with plug-in bandwidth chosen using an infinite order pilot.
}
\usage{
sospecden(x, l, kernel = c("Trap", "Rect", "SupSm"), x.points = seq(-pi, pi, len = 200))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A univariate time series.
}
  \item{l}{
The smoothing parameter used for the infinite order pilot estimate. If missing, adaptive bandwidth choice is used via \code{\link{bwadap.ts}}.  
}
  \item{kernel}{ The flat-top kernel used for the pilot estimate.  
Three kernels are implemented, described by the shape of their Fourier transforms.  "Trap" is trapezoid shaped and is the default.  The rectangular kernel is not recommended and is here for comparison only.  SupSm is infinitely differentiable in the Fourier domain.  
}
  \item{x.points}{
Points at which the spectral density is estimated.  If \code{x.points} is set to \code{NULL}, \code{sospecden} will return a function which interpolates between the estimated points.  
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
plot(sospecden(x), type="l")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Spectral Density }
\keyword{ Plug-in bandwidth }
\keyword{ Flat-top kernel }% __ONLY ONE__ keyword per line
