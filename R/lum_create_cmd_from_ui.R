#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @param as_file if TRUE, show \code{create_beast_input_file},
#'   else show \code{create_beast_input}
#' @author Richel J.C. Bilderbeek
lum_create_cmd_from_ui <- function(ui, as_file) {
  gamma_site_model <- list(
    subst_rate = ui$subst_rate,
    gamma_cat_count = ui$gamma_cat_count,
    prop_invariant = ui$prop_invariant
  )
  lum_create_cmd(
    ui$input_filename,
    ui$output_filename,
    gamma_site_model,
    ui$subst_model,
    ui$clock_model,
    ui$tree_prior,
    ui$chain_length,
    ui$store_every,
    as_file = as_file
  )
}
