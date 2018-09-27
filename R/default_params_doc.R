#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param as_file if TRUE, show \code{create_beast_input_file},
#'   else show \code{create_beast_input}
#' @param beautier_cmd the \code{beautier} command
#' @param chain_length MCMC chain length
#' @param clock_model the clock model, as text
#' @param filename name of the file
#' @param gamma_site_model a gamma_site_model,
#'   as created by \link[beautier]{create_gamma_site_model}
#' @param input the current user interface,
#'   as created by \link{lum_create_ui}
#' @param input_filename the name of the FASTA filename
#' @param output the new, changed user interface
#' @param output_filename the name of the to-be-created BEAST2 file
#' @param store_every MCMC store interval
#' @param subst_model name of the substitution model
#' @param tree_prior name of the tree prior
#' @param ui the user interface, as created by \link{lum_create_ui}
#' @author Richel J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  as_file,
  beautier_cmd,
  chain_length,
  clock_model,
  filename,
  gamma_site_model,
  input,
  input_filename,
  output,
  output_filename,
  store_every,
  subst_model,
  tree_prior,
  ui
) {
  # Nothing
}
