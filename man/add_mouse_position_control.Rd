% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom-controls.R
\name{add_mouse_position_control}
\alias{add_mouse_position_control}
\title{Add a mouse position control to the map}
\usage{
add_mouse_position_control(map, mustache_template = NULL, pos = NULL,
  css_text = NULL)
}
\arguments{
\item{map}{A \link{mapboxer} object.}

\item{mustache_template}{A \href{https://github.com/janl/mustache.js}{mustache} template
that contains the mustache tags \code{lng} and \code{lat}.}

\item{pos}{The position of the control. One of \code{top-left}, \code{top-right},
\code{bottom-right} or \code{bottom-left}.}

\item{css_text}{A \code{cssText} string that will modify the style of the control element.}
}
\description{
Add a mouse position control to the map
}
\examples{
map <- mapboxer(zoom = 4) \%>\%
  add_mouse_position_control(
    mustache_template = "<b>Lng:</b>{{lng}}, <b>Lat:</b>{{lat}}",
    pos = "bottom-left"
  )

if (interactive()) map
}
