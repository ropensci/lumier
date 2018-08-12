#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @param as_file if TRUE, show \code{create_beast_input_file},
#'   else show \code{create_beast_input}
#' @author Richel J.C. Bilderbeek
lum_create_full_cmd_from_ui <- function(
  ui,
  as_file
) {

  paste(
    "library(beautier)",
    " ",
    formatR::tidy_source(
      text = lum_create_cmd_from_ui(ui, as_file = as_file),
      width.cutoff = 40
    )$text.tidy,
    sep = "\n"
  )
}
