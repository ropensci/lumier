#' Create the \code{beautier} command from the user interface
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
lum_create_beautier_cmd <- function(ui) {
  paste(
    "library(beautier)",
    " ",
    lumier::lum_create_cmd(ui),
    sep = "\n", collapse = "\n"
  )
}
