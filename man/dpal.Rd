% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dpal.R
\name{dpal}
\alias{dpal}
\title{Create divergent color palettes using the HCL color space}
\usage{
dpal(n, hue = c(260, 0), chroma = 80, luminance = c(25, 100),
  power = 1.3, alpha = 1, fixup = TRUE)
}
\arguments{
\item{n}{number of colors to create}

\item{hue}{vector of length 2 giving the first and second hues to use}

\item{chroma}{chroma value for palette}

\item{luminance}{vector of length 2 giving the start and end bounds for the
range of luminance values}

\item{power}{parameter to control how chroma and luminance increase/decrease}

\item{alpha}{transparency level defined on the interval [0, 1] where 0 =
transparent and 1 = opaque}

\item{fixup}{logical, should RGB value be corrected (see \code{\link{hcl}}}
}
\value{
\code{dpal} returns a vector of hex colors
}
\description{
\code{dpal} creates divergent color palettes using the HCL color space.
    Divergent color palettes consist of a gradient that goes from dark to
    light to dark where both ends of the gradient are a separate hue.
    Divergent color palettes  are suitable when low and high values are of
    importance, but middle range values are less important.
}
\examples{
plotpal(dpal(200))
plotpal(dpal(200, luminance = c(30, 90)))
plotpal(dpal(200, luminance = c(30, 90), power = 2))
plotpal(dpal(200, luminance = c(30, 90), power = 0.8))
plotpal(dpal(200, hue = c(100, 240)))
plotpal(dpal(200, hue = c(40, 240), luminance = c(30, 90)))

mat <- matrix(c(rnorm(100), rnorm(100) + 1, rnorm(100) + 2,
    rnorm(100) + 3),
              ncol = 4)
image(z = mat, col = dpal(200), axes = FALSE)
box()

}
\seealso{
\code{\link{hcl}} \code{\link{qpal}} \code{\link{spal}}
}
\author{
Michael Malick
}
