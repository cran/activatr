% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/act_tbl.R
\name{act_tbl}
\alias{act_tbl}
\alias{summary.act_tbl}
\title{Creates an activatr tibble, abbreviated \code{act_tbl}.}
\usage{
act_tbl(x)

\method{summary}{act_tbl}(object, full = FALSE, units = c("imperial", "metric"), ...)
}
\arguments{
\item{x}{An object to turn into an \code{act_tbl}.}

\item{object}{an object for which a summary is desired}

\item{full}{Whether every column should be included, and filled with NA if
missing. Most useful to ensure the tibble has the same shape for
every file, allowing eventual use of \code{bind_rows} to create
a full summary data set.}

\item{units}{Which units should be used?
Imperial returns distance in miles, pace in minutes per mile,
and elevation in feet.
Metric returns distance in kilometers, pace in minutes per
kilometer, and elevation in meters.}

\item{...}{Additional arguments.}
}
\value{
\code{act_tbl} returns an object of class \code{"act_tbl"}, or
        errors if the provided tibble is invalid.

\code{summary.act_tbl} returns a tibble with a single row,
        containing a summary of the given \code{act_tbl}.
}
\description{
\code{act_tbl} takes a tibble and returns an \code{act_tbl} object.

\code{summary.act_tbl} returns a tibble with canonical information about
the activity. Designed to allow for easy creation of activity summary data
sets by mapping summary over each \code{act_tbl} then using \code{bind_rows}
to create a complete data set.
}
