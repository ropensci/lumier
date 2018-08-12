#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
lum_create_beautier_cmd <- function(ui) {
  paste(
    "library(beautier)",
    " ",
    lum_create_cmd(ui),
    sep = "\n", collapse = "\n"
  )
}
