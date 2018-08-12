#' Create the \code{mcmc} argument
#' @author Richel J.C. Bilderbeek
lum_create_mcmc_arg <- function(chain_length, store_every) {
  paste(
    "  mcmc = create_mcmc(",
    paste0("    chain_length = ", chain_length, ","),
    paste0("    store_every = ", store_every),
    "  )",
    sep = "\n"
  )
}
