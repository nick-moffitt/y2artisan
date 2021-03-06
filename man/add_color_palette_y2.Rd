% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_color_palette_y2.R
\name{add_color_palette_y2}
\alias{add_color_palette_y2}
\title{Add a 5 color palette}
\usage{
add_color_palette_y2(
  hex_codes = "#41536F",
  color_names = "Y2_BLUE",
  position = 3,
  colors_to_env = TRUE,
  show_colors = TRUE
)
}
\arguments{
\item{hex_codes}{DEFAULT = '#41536F'; (Y2 blue) The hex code(s) of the color(s) for which you want to get a palette}

\item{color_names}{DEFAULT = 'Y2_BLUE'; The color label you want associated with each hex code. String can be in any case}

\item{position}{DEFAULT = 3; Position can be any of c(1, 2, 3, 4, 5). position = 1 will make the provided hex code the "DARKER" value while position = 5 will make it the "LIGHTER" value in the 5 point scale}

\item{colors_to_env}{DEFAULT = TRUE; Whether you want your palettes saved to your R environment}

\item{show_colors}{DEFAULT = TRUE; Whether you want a plot showing you the newly created color palettes for a quick reference}
}
\description{
Give a list of color names (e.g. blue) and the associated hex codes (e.g. #41536F). For each color given, add_color_palette_y2 will add a 5 color, monochromatic scale. Using position, choose where in the scale each hex code will start.
}
\examples{
add_color_palette_y2()

add_color_palette_y2(
  hex_codes = c('#fd8420', '#558575', '#41536F'),
  color_names = c('Orange', 'gray', 'BLUE'),
  position = c(1, 3, 5),
  colors_to_env = TRUE,
  show_colors = TRUE
)
}
\keyword{Qualtrics}
\keyword{color}
\keyword{graph}
