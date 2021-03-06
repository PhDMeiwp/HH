\name{ResizeEtc}
\alias{ResizeEtc}
\title{Display multiple independent trellis objects on the same
  coordinated scale.}
\description{
This function is a wrapper for several of the functions in the
\code{latticeExtra} package.
}
\usage{
ResizeEtc(c.list,
           condlevelsName,
           x.same, y.same,
           layout,
           strip=TRUE,
           strip.left=TRUE,
           strip.values, strip.left.values,
           strip.par, strip.left.par,  ## only the second is effective
                                       ## when both are specified
           resize.height, resize.width,
           main,
           ...)
}
\arguments{
  \item{c.list}{combination of two or more trellis objects
    from \code{\link[latticeExtra]{c.trellis}}.  If \code{c.list} has
    names, the names will appear in the strips.}
\item{condlevelsName}{Name of the dimname of the items in the \code{c.list}.}
\item{x.same, y.same}{If \code{TRUE}, force all panels to have the same
  \code{x.limits} or \code{y.limits}.}
\item{layout}{Standard lattice \code{layout} argument.}
\item{strip, strip.left}{standard lattice arguments described in \code{\link[lattice]{barchart}.}}
\item{strip.values, strip.left.values}{strip names for the panels.
  Only the second is effective when both are specified.}
\item{strip.par, strip.left.par}{\code{par.strip.text}.
  Only the second is effective when both are specified.}
\item{resize.height, resize.width}{\code{h} and \code{w} arguments to
  \code{\link[latticeExtra]{resizePanels}}.}
\item{main}{Main title for resulting combined plot.}
\item{\dots}{Other arguments to \code{\link[lattice]{barchart}.}}
}
\value{
\code{"trellis"} object combining each of the individual plots in the
\code{c.list} argument according to the specifications in the other arguments.
}
\seealso{\code{\link[latticeExtra]{c.trellis}}, \code{\link{plot.likert}}}
\examples{
## see the examples in ?HH:::plot.likert

require(grid)
require(lattice)
require(latticeExtra)
require(HH)

## This is the same example as in ?HH:::plot.likert
## Here, it is done with explicit use of ResizeEtc.

data(ProfChal)
tmp <- data.matrix(ProfChal[,1:5])
rownames(tmp) <- ProfChal$Question

AA <- likert(tmp[1,], box.width=unit(.4,"cm"), positive.order=TRUE)
BB <- likert(tmp[2:6,], box.width=unit(.4,"cm"), positive.order=TRUE)
CC <- likert(tmp[7:10,], box.width=unit(.4,"cm"), positive.order=TRUE)
DD <- likert(tmp[11:12,], box.width=unit(.4,"cm"), positive.order=TRUE)
EE <- likert(tmp[13:14,], box.width=unit(.4,"cm"), positive.order=TRUE)
FF <- likert(tmp[15:16,], box.width=unit(.4,"cm"), positive.order=TRUE)

BB

## print(AA, more=TRUE,  split=c(1,1,3,2))
## print(BB, more=TRUE,  split=c(2,1,3,2))
## print(CC, more=TRUE,  split=c(3,1,3,2))
## print(DD, more=TRUE,  split=c(1,2,3,2))
## print(EE, more=TRUE,  split=c(2,2,3,2))
## print(FF, more=FALSE, split=c(3,2,3,2))

ResizeEtc(c.list=c(AA,BB,CC,DD,EE,FF),
          layout=c(1,6), main="Not yet good enough")

Group <- levels(ProfChal$Subtable)

ResizeEtc(c.list=c(AA,BB,CC,DD,EE,FF),
          condlevelsName='Group',
          x.same=TRUE,
          layout=c(1,6),
          strip.left.values=Group,
          strip.left.par=list(cex=.7, lines=5),
          resize.height=c(1,5,4,2,2,2)+.5,
          main=list("Is your job professionally challenging?", x=unit(.65, "npc")))


}
\author{ Richard M. Heiberger <rmh@temple.edu> }
\keyword{hplot}
