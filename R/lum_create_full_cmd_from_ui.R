#' Create the \code{beautier} command from the user interface
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
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
