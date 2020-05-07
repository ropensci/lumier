#' Create the \code{mcmc} argument
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
lum_create_mcmc_arg <- function(
  chain_length = "10000000",
  store_every = -1
) {
  paste0(
    "mcmc = create_mcmc(",
    "chain_length = ", chain_length, ", ",
    "store_every = ", store_every,
    ")"
  )
}
