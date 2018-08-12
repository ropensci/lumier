#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
lum_create_beautier_cmd <- function(ui) {
  paste(
    "create_beast2_input(",
    paste0("  input_filenames = \"", ui$filename, "\","),
    paste0("  site_models = ", create_site_model_text(ui$subst_model), ","),
    paste0("  clock_models = ", create_clock_model_text(ui$clock_model), ","),
    paste0("  tree_priors = ", create_tree_prior_text(ui$tree_prior), ","),
    create_mcmc_text(ui),
    ")",
    sep = "\n", collapse = "\n"
  )
}
