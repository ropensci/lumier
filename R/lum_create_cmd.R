#' Create the \code{beautier} command from the user interface
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
lum_create_cmd <- function(
  input_filename = "test.fas",
  output_filename = "beast2.xml",
  gamma_site_model = beautier::create_gamma_site_model(),
  subst_model = "JC69",
  clock_model = "Strict Clock",
  tree_prior = "Yule Model",
  chain_length = 10000000,
  store_every = -1,
  as_file = FALSE
) {
  if (!beautier:::is_gamma_site_model(gamma_site_model)) {
    stop(
      "'gamma_site_model' must be a gamma site model.\n",
      "Actual value(s): ", gamma_site_model
    )
  }
  args <- paste(
    lum_create_input_filename_arg(input_filename),
    lum_create_site_model_arg(subst_model, gamma_site_model),
    lum_create_clock_model_arg(clock_model),
    lum_create_tree_prior_arg(tree_prior),
    lum_create_mcmc_arg(chain_length, store_every),
    sep = ", "
  )
  if (as_file == TRUE) {
    args <- paste(
      lum_create_input_filename_arg(input_filename),
      lum_create_output_filename_arg(output_filename), # Different
      lum_create_site_model_arg(subst_model),
      lum_create_clock_model_arg(clock_model),
      lum_create_tree_prior_arg(tree_prior),
      lum_create_mcmc_arg(chain_length, store_every),
      sep = ", "
    )
  }
  cmd <- "create_beast2_input"
  if (as_file == TRUE) cmd <- paste0(cmd, "_file")
  cmd <- paste0(
    cmd, "(", args, ")",
    collapse = ""
  )
}
