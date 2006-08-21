\name{objip}
\alias{objip}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{loop through all attached directories looking for pattern}
\description{
  Loop \code{objects()} through all attached directories
  (items in the \code{search()} list) looking for a regular expression pattern.
}
\usage{
objip(pattern, where = search(), frame=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pattern}{Character string containing a regular expression
    that is used to list only a subset of the objects.
    Only names matching 'pattern' are returned.}
  \item{where}{an object defining a database in the search list.}
  \item{frame}{In S-Plus, an integer giving the frame number.
    In R, \code{frame} is ignored.}
}
\value{
A list of 0 or more character vectors.  Each character vector has the
name of one of the items in the \code{search()} list.  Each character
vector contains the names of the objects in the specified environment
which match the \code{pattern}.  If there are no matching names in an
environment, then the corresponding character vector is removed from the
result.
}
\author{ Richard M. Heiberger <rmh@temple.edu> }
\seealso{\code{\link[base]{objects}} in R,
  \code{\link[splus]{objects}} in S-Plus.}
\examples{
objip("qq")
objip("^qq")
objip("qq$")
}
\keyword{utilities}