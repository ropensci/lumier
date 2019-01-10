#' Create the \code{gamma_site_model} argument
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
lum_create_gamma_site_model_arg <- function( # nolint internal function name is long for consistency
  gamma_site_model = beautier::create_gamma_site_model()
) {
  if (!beautier:::is_gamma_site_model(gamma_site_model)) {
    stop(
      "'gamma_site_model' must be a gamma site model.\n",
      "Actual value(s): ", gamma_site_model
    )
  }
  if (gamma_site_model$gamma_cat_count == "0" &&
      gamma_site_model$prop_invariant == "0.0"
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
