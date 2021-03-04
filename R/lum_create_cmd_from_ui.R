#' Create the \code{beautier} command from the user interface
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
#' @export
lum_create_cmd_from_ui <- function(ui, as_file) {
  gamma_site_model <- beautier::create_gamma_site_model(
    gamma_cat_count = 1, # ui$gamma_cat_count,
    gamma_shape = 1, #ui$gamma_shape,
    prop_invariant = 0.0, #ui$prop_invariant,
    gamma_shape_prior_distr = NA,
    freq_equilibrium = "estimated" #ui$freq_equilibrium
  )
  testit::assert(beautier::is_gamma_site_model(gamma_site_model))
  lumier::lum_create_cmd(
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
