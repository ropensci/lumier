#' Create the \code{beautier} command from the user interface
#' @param filename the name of the FASTA filename
#' @param subst_model name of the substitution model
#' @param clock_model name of the clock model
#' @param tree_prior name of the tree prior
#' @param chain_length MCMC chain length
#' @param store_every MCMC store interval
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
