\name{HH-package}
\alias{HH-package}
\alias{HH}
\docType{package}
\title{
  Support software for
  Statistical Analysis and Data Display
  by
        Richard M. Heiberger and Burt Holland
}
\description{
Support software for \emph{Statistical Analysis and Data
        Display} (First Edition, Springer, ISBN 0-387-40270-5, 2004) and
        (Second Edition, Springer, ISBN 978-1-4939-2121-8 2015).  This contemporary
        presentation of statistical methods features extensive use of
        graphical displays for exploring data and for displaying the
        analysis. The authors demonstrate how to analyze data---showing
        code, graphics, and accompanying computer listings---for all the
        methods they cover. They emphasize how to construct and
        interpret graphs, discuss principles of graphical design, and
        show how accompanying traditional tabular results are used to
        confirm the visual impressions derived directly from the
        graphs. Many of the graphical formats are novel and appear
        here for the first time in print. All chapters have exercises.
}
\details{
\tabular{ll}{
Package: \tab HH\cr
Type: \tab Package\cr
Version: \tab 1.4\cr
Date: \tab 2006-08-21\cr
License: \tab GPL version 2 or newer\cr
}
%~~ An overview of how to use the package, including the most important functions ~~

data display, scatterplot matrix, (MMC Mean--mean Multiple Comparison)
plots, interaction plots, ANCOVA plots, regression diagnostics, time
series, ARIMA models, boxplots

}
\author{
Richard M. Heiberger

Maintainer: Richard M. Heiberger <rmh@temple.edu>
}
\references{
  Heiberger, Richard M. and Holland, Burt (2015).
\emph{Statistical Analysis and Data Display: An Intermediate Course
  with Examples in R}, Second Edition.
 Springer Texts in Statistics. Springer.
 ISBN 978-1-4939-2121-8.
  Heiberger, Richard M. and Holland, Burt (2004).
\emph{Statistical Analysis and Data Display: An Intermediate Course
  with Examples in S-Plus, R, and SAS}, First Edition.
 Springer Texts in Statistics. Springer.
 ISBN 0-387-40270-5.
}
\keyword{ package }
% \keyword{ data display }
% \keyword{ scatterplot matrix }
% \keyword{ multiple comparisons }
% \keyword{ interaction plots }
% \keyword{ ANCOVA plots }
% \keyword{ regression diagnostics }
% \keyword{ time series }
% \keyword{ ARIMA models }
% \keyword{ boxplots }
\keyword{hplot}
\keyword{data}
\keyword{htest}
\keyword{design}
\keyword{ts}
\keyword{shiny}
\seealso{
  \code{\link{ancovaplot}},
  \code{\link{ci.plot}},
  \code{\link{interaction2wt}},
  \code{\link{ladder}},
  \code{\link{case.lm}},
  \code{\link{NTplot}} for Normal and \eqn{t} plots,
  \code{\link{hov}},
  \code{\link{resid.squares}},
  \code{\link{MMC}},
  %% \code{\link{xysplom}},
  \code{\link{AEdotplot}},
  \code{\link{likert}},
  \code{\link{tsacfplots}},
  \code{\link{tsdiagplot}}

  \code{demo(package="HH")}
}

\examples{
## In addition to the examples for each function,
## there are seven interactive shiny apps in the HH package:
\dontrun{
NTplot(mean0=0, mean1=1, shiny=TRUE)
shiny::runApp(system.file("shiny/bivariateNormal", package="HH"))
shiny::runApp(system.file("shiny/bivariateNormalScatterplot", package="HH"))
shiny::runApp(system.file("shiny/PopulationPyramid", package="HH"))
shiny.CIplot(height = "auto")
shiny::runApp(system.file("shiny/AEdotplot", package="HH"))
shiny::runApp(system.file("shiny/likert", package="HH"))
}
}
