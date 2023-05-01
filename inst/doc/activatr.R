## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----filename-----------------------------------------------------------------
library(activatr)

# Get the running_example.gpx file included with this package.
filename <- system.file(
  "extdata",
  "running_example.gpx.gz",
  package = "activatr"
)

df <- parse_gpx(filename)

## ----table, echo=FALSE, results='asis'----------------------------------------
knitr::kable(head(df, 5))

## ----summary, results = "hide"------------------------------------------------
summary(df)

## ----summary_table, echo=FALSE, results='asis'--------------------------------
knitr::kable(summary(df))

## ----basicplot, warning = FALSE-----------------------------------------------
library(ggplot2)
qplot(lon, lat, data = df)

## ----mapplot_display, eval = FALSE--------------------------------------------
#  ggmap::ggmap(get_ggmap_from_df(df)) + theme_void()

## ----mapplot_run, echo = FALSE------------------------------------------------
# running_example_ggmap is the saved result of calling get_ggmap_from_df(df)
# We don't run that here because it requires an API key.
df_ggmap <- running_example_ggmap
ggmap::ggmap(running_example_ggmap) + theme_void()

## ----finalplot_display, eval = FALSE------------------------------------------
#  ggmap::ggmap(get_ggmap_from_df(df)) +
#    theme_void() +
#    geom_path(aes(x = lon, y = lat), size = 1, data = df, color = "red")

## ----finalplot_run, echo = FALSE----------------------------------------------
ggmap::ggmap(running_example_ggmap) +
  theme_void() +
  geom_path(aes(x = lon, y = lat), size = 1, data = df, color = "red")

