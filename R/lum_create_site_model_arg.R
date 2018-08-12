#' Create the \code{site_model} argument
#' @param subst_model name of the substitution model
#' @author Richel J.C. Bilderbeek
lum_create_site_model_arg <- function(subst_model) {
  arg <- "site_models ="
  if (subst_model == "JC69") {
    return(paste(arg, "create_jc69_site_model()"))
  }
  if (subst_model == "HKY") {
    return(paste(arg, "create_hky_site_model()"))
  }
  if (subst_model == "TN93") {
    return(paste(arg, "create_tn93_site_model()"))
  }
  if (subst_model == "GTR") {
    return(paste(arg, "create_gtr_site_model()"))
  }
  stop("Unknown substitution model")
}
