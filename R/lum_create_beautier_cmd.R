#' Create the \code{beautier} command from the user interface
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
lum_create_beautier_cmd <- function(ui) {
  paste(
    "library(beautier)",
    " ",
    lum_create_cmd(ui),
    sep = "\n", collapse = "\n"
  )
}
