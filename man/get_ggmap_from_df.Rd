% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map.R
\name{get_ggmap_from_df}
\alias{get_ggmap_from_df}
\title{Get a map for a given \code{\link[=act_tbl-class]{act_tbl}}}
\usage{
get_ggmap_from_df(df, ...)
}
\arguments{
\item{df}{An \code{\link[=act_tbl-class]{act_tbl}} object.}

\item{...}{Additional arguments forwarded to \code{ggmap::get_googlemap()}.}
}
\value{
A ggmap object, the result of calling \code{ggmap::get_googlemap()},
with the correct center and size to include the entire activity
represented by the \code{\link[=act_tbl-class]{act_tbl}}.
}
\description{
\code{get_ggmap_from_df} takes an \code{\link[=act_tbl-class]{act_tbl}} object, computes the
correct zoom and center for that activity, then returns a \code{ggmap} object for
that zoom and center.
}
\details{
Note that since this calls \code{ggmap::get_googlemap()}, you must have
previously called \code{ggmap::register_google()} to register an API key.
}
\examples{
\dontrun{
example_gpx_file <- system.file(
  "extdata",
  "running_example.gpx.gz",
  package = "activatr"
)
act_tbl <- parse_gpx(example_gpx_file)
ggmap::ggmap(get_ggmap_from_df(act_tbl))
}
}
\seealso{
\code{ggmap::get_googlemap()}
}
