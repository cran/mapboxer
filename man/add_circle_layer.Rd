% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers_circle.R
\name{add_circle_layer}
\alias{add_circle_layer}
\title{Add a circle layer to the map}
\usage{
add_circle_layer(map, source = NULL, filter = NULL,
  circle_blur = NULL, circle_color = NULL, circle_opacity = NULL,
  circle_pitch_alignment = NULL, circle_pitch_scale = NULL,
  circle_radius = NULL, circle_sort_key = NULL,
  circle_stroke_color = NULL, circle_stroke_opacity = NULL,
  circle_stroke_width = NULL, circle_translate = NULL,
  circle_translate_anchor = NULL, visibility = TRUE, popup = NULL,
  id = "circle-layer")
}
\arguments{
\item{map}{A \link{mapboxer} object.}

\item{source}{A Mapbox source. Uses the source from the \link{mapboxer} object if no source is supplied.}

\item{filter}{A filter expression that is applied to the \code{source}.}

\item{circle_blur}{(paint) Amount to blur the circle.
1 blurs the circle such that only the centerpoint is full opacity.}

\item{circle_color}{(paint) The fill color of the circle.}

\item{circle_opacity}{(paint) The opacity at which the circle will be drawn.}

\item{circle_pitch_alignment}{(paint) Orientation of circle when map is pitched.
One of "map", "viewport".}

\item{circle_pitch_scale}{(paint) Controls the scaling behavior of the circle when the map is pitched.
One of "map", "viewport".}

\item{circle_radius}{(paint) The radius of the circle.}

\item{circle_sort_key}{(layout) Sorts features in ascending order based on this value.
Features with a higher sort key will appear above features with a lower sort key.}

\item{circle_stroke_color}{(paint) The stroke color of the circle.}

\item{circle_stroke_opacity}{(paint) The opacity of the circle's stroke.}

\item{circle_stroke_width}{(paint) The width of the circle's stroke.
Strokes are placed outside of the \code{circle_radius}.}

\item{circle_translate}{(paint) The geometry's offset.
Values are [x, y] where negatives indicate left and up, respectively.}

\item{circle_translate_anchor}{(paint) Controls the frame of reference for \code{circle_translate}.
One of "map", "viewport".}

\item{visibility}{(layout) Whether the layer should be displayed.}

\item{popup}{A \href{https://github.com/janl/mustache.js}{mustache} template
in which the tags refer to the properties of the layer's data object.}

\item{id}{The unique id of the layer.}
}
\description{
Add a circle layer to the map
}
\examples{
map <- as_mapbox_source(motor_vehicle_collisions_nyc) \%>\%
  mapboxer() \%>\%
  set_view_state(-73.9165, 40.7114, 11) \%>\%
  add_circle_layer(
    circle_color = "red",
    circle_radius = 5,
    popup = "{{date}} {{time}}"
  )

if (interactive()) map
}
\seealso{
\url{https://docs.mapbox.com/mapbox-gl-js/style-spec/layers/#circle}
}
