#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @author Richel J.C. Bilderbeek
lum_create_cmd_from_ui <- function(ui) {
  lum_create_cmd(
    ui$filename,
    ui$subst_model,
    ui$clock_model,
    ui$tree_prior,
    ui$chain_length,
    ui$store_every
  )
}
