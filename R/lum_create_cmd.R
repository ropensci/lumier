#' Create the \code{beautier} command from the user interface
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @author Richel J.C. Bilderbeek
lum_create_cmd <- function(
  filename = "test.fas",
  subst_model = "JC69",
  clock_model = "Strict Clock",
  tree_prior = "Yule Model",
  chain_length = 10000000,
  store_every = -1
) {
  args <- paste(
    lum_create_input_filename_arg(filename),
    lum_create_site_model_arg(subst_model),
    lum_create_clock_model_arg(clock_model),
    lum_create_tree_prior_arg(tree_prior),
    lum_create_mcmc_arg(chain_length, store_every),
    sep = ", "
  )
  cmd <- paste0(
    "create_beast2_input(", args, ")",
    collapse = ""
  )
}
