#' Create the \code{output_filename} argument
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
#' @export
lum_create_output_filename_arg <- function(output_filename) {
  paste0("output_filename = \"", output_filename, "\"")
}
