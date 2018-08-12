#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
lum_create_cmd <- function(ui) {
  paste(
    "create_beast2_input(",
    paste0("  input_filenames = \"", ui$filename, "\","),
    paste0("  site_models = ", lum_create_site_model_arg(ui$subst_model), ","),
    paste0("  clock_models = ", lum_create_clock_model_arg(ui$clock_model), ","),
    paste0("  tree_priors = ", lum_create_tree_prior_arg(ui$tree_prior), ","),
    lum_create_mcmc_arg(ui),
    ")",
    sep = "\n", collapse = "\n"
  )
}
