lum_create_gamma_site_model_arg <- function(
  gamma_site_model = list(
    subst_rate = 1.0,
    gamma_cat_count = 0,
    prop_invariant = 0.0
  )
) {
  if (gamma_site_model$subst_rate == 1.0 &&
      gamma_site_model$gamma_cat_count == 0 &&
      gamma_site_model$prop_invariant == 0.0
  ) {
    return("")
  }
  args <- NULL
  if (gamma_site_model$gamma_cat_count != 0) {
    args <- c(
      args,
      paste0("gamma_cat_count = ", gamma_site_model$gamma_cat_count))
  }
  paste0(
    "gamma_site_model = create_gamma_site_model(",
    paste(args, sep = ", "),
    ")"
  )
}
