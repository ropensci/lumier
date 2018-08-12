#' Create the \code{beautier} command from the user interface
#' @param filename the name of the FASTA filename
#' @param subst_model name of the substitution model
#' @param clock_model name of the clock model
#' @param tree_prior name of the tree prior
#' @param chain_length MCMC chain length
#' @param store_every MCMC store interval
#' @param as_file if TRUE, show \code{create_beast_input_file},
#'   else show \code{create_beast_input}
#' @author Richel J.C. Bilderbeek
lum_create_cmd <- function(
  input_filename = "test.fas",
  output_filename = "beast2.xml",
  subst_model = "JC69",
  clock_model = "Strict Clock",
  tree_prior = "Yule Model",
  chain_length = 10000000,
  store_every = -1,
  as_file = FALSE
) {
  args <- paste(
    lum_create_input_filename_arg(input_filename),
    lum_create_site_model_arg(subst_model),
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
  if (as_file == TRUE) cmd <- paste0(cmd, "_as_file")
  cmd <- paste0(
    cmd, "(", args, ")",
    collapse = ""
  )
}
