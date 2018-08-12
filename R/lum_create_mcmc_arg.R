#' Create the \code{beautier}'s \code{mcmc} argument
lum_create_mcmc_arg <- function(ui) {
  paste(
    "  mcmc = create_mcmc(",
    paste0("    chain_length = ", ui$chain_length, ","),
    paste0("    store_every = ", ui$store_every),
    "  )",
    sep = "\n"
  )
}
