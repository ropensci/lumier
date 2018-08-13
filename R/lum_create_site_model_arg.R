#' Create the \code{site_model} argument
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
lum_create_site_model_arg <- function(
  subst_model = "JC69",
  gamma_site_model = beautier::create_gamma_site_model()
) {
  lum_create_gamma_site_model_arg <- NULL; rm(lum_create_gamma_site_model_arg) # nolint, fixes warning: no visible binding for global variable
  site_model_arg <- lum_create_gamma_site_model_arg(gamma_site_model)
  arg <- "site_models = "
  if (subst_model == "JC69") {
    return(paste0(arg, "create_jc69_site_model(", site_model_arg, ")"))
  }
  if (subst_model == "HKY") {
    return(paste0(arg, "create_hky_site_model(", site_model_arg, ")"))
  }
  if (subst_model == "TN93") {
    return(paste0(arg, "create_tn93_site_model(", site_model_arg, ")"))
  }
  if (subst_model == "GTR") {
    return(paste0(arg, "create_gtr_site_model(", site_model_arg, ")"))
  }
  stop("Unknown substitution model")
}
