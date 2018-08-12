#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @author Richel J.C. Bilderbeek
lum_create_beautier_cmd_from_ui <- function(ui) {
  paste(
    "library(beautier)",
    " ",
    lum_create_cmd_from_ui(ui),
    sep = "\n", collapse = "\n"
  )
}
