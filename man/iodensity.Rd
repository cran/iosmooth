\name{iodensity}
\alias{iodensity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Kernel density estimation with infinite order kernels
}
\description{
Calculates the standard kernel density estimate using infinite order flat-top kernels.  These estimators have been shown to automatically achieve optimal rates of covergence across a wide range of scenarios.
}
\usage{
iodensity(x, bw, kernel = c("Trap", "Rect", "SupSm"), n.points = 100, x.points)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Univariate data \code{x}.
}
  \item{bw}{
The kernel bandwidth.  See \code{\link{bwplot}} and \code{\link{bwadap}}.
}
  \item{kernel}{
Three flat-top kernels are implemented, described by the shape of their Fourier transforms.  "Trap" is trapezoid shaped and is the default.  The rectangular kernel is not recommended and is here for comparison only.  SupSm is infinitely differentiable in the Fourier domain; its inverse Fourier transform is estimated numerically, and will be slower.  
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
\item{x}{
The x values at which the density is estimated (\code{x.points} if specified).}
\item{y}{
The estimated density at the associated \code{x} values.}
}
\references{
Politis, D. N. (2001). On nonparametric function estimation with infinite-order flat-top kernels, in \emph{Probability and Statistical Models with applications}, Ch. Charalambides et al. (Eds.), Chapman and Hall/CRC, Boca Raton, 469-483.

McMurry, T. L., & Politis, D. N. (2004). Nonparametric regression with infinite order flat-top kernels. \emph{Journal of Nonparametric Statistics}, 16(3-4), 549-562.
}
\author{
Timothy L. McMurry
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bwadap}}, \code{\link{bwadap.numeric}}
}
\examples{
x <- rnorm(100)
bwplot(x)
h <- bwadap(x)
plot(iodensity(x, bw=h, kernel="Trap", n.points=300), type="l")
rug(x)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ kernel }
\keyword{ density }
\keyword{ flat-top }% __ONLY ONE__ keyword per line
