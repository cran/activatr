% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mutate.R
\name{mutate_with_speed}
\alias{mutate_with_speed}
\title{Augments a Activatr DF with a speed variable.}
\usage{
mutate_with_speed(df, method = c("2D", "3D"), lead = 0, lag = 1)
}
\arguments{
\item{df}{A Activatr DF: a tibble from \code{parse_gpx} or \code{parse_tcx}.}

\item{method}{If 2D (default), ignores elevation. If 3D, includes elevation.}

\item{lead}{How far ahead to look for the "end" point}

\item{lag}{How far behind to look for the "start" point}
}
\value{
That same Activatr DF, but with a new \code{speed} column, in meters
        per second.
}
\description{
This returns a mutated Activatr DF with a new column representing speed, in
meters per second. The speed is determined by looking at the time difference
between the current point and the previous point: hence, it is always NA
for the first row in the data frame.
}
