\name{ioksmooth}
\alias{ioksmooth}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nadaraya-Watson regression estimator with infinite order kernels.
}
\description{
Calculates the Nadaraya-Watson nonparametric kernel regression estimator using infinite order flat-top kernels.  These estimators have been shown to automatically achieve optimal rates of covergence across a wide range of scenarios.
}
\usage{
ioksmooth(x, y, bw = 0.1, kernel = c("Trap", "Rect", "SupSm"), n.points = 100, x.points)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Predictor variable \code{x}.
}
  \item{y}{
Response variable \code{y}.
}
  \item{bw}{
The kernel bandwidth.  Can be chosen with the help of \code{\link{bwplot}}.
}
  \item{kernel}{
Three flat-top kernels are implemented, described by the shape of their Fourier transforms.  "Trap" is trapezoid shaped and is the default.  The rectangular kernel is not recommended and is here for comparison only.  SuperSmooth is infinitely differentiable in the Fourier domain, which, in theory, minimizes edge effects in the interior of the domain.  It is calculated numerically, and will be slower.
}
  \item{n.points}{
The number of points at which the density estimate will be calculated if \code{x.points} is not specified.
}
  \item{x.points}{
The points at which the density should be calculated.  If missing, the function defaults to the range of \code{x} +/- 5\%. 
}
}
\value{
A list of length 2
\item{x}{ The \code{x} values at which the regression is estimated (\code{x.points} if specified).}
\item{y}{ The estimated regression function at the associated x values.}
}
\references{
McMurry, T. L., & Politis, D. N. (2004). Nonparametric regression with infinite order flat-top kernels. \emph{Journal of Nonparametric Statistics}, 16(3-4), 549-562.

McMurry, T. L., & Politis, D. N. (2008). Minimally biased nonparametric regression and autoregression. \emph{REVSTAT-Statistical Journal}, 6(2), 123-150.
}
\author{
Timothy L. McMurry
}

\section{Warning }{
	The regressions can be unstable in regions where the design density is low.  For regression, \code{\link{bwplot}} can be used to visually select the large low frequency component, but it is not amenable to algorithmic bandwidth choice.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwplot}}, \code{\link{bwplot.numeric}}
}
\examples{
set.seed(123)
x <- sort(runif(200, 0, 2*pi))
# Regression function
r <- exp(-x^2) + sin(x) 
# Observed response
y <- r + 0.3*rnorm(200)
bwplot(x, y, smax=10)
# Choose bandwidth about 1/2
plot(x, y)
lines(ioksmooth(x, y, bw=1/2, kernel="Trap"))
# Add the truth in red
lines(x, r, col="red")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Nonparametric Regression }
\keyword{ Kernel }% __ONLY ONE__ keyword per line
