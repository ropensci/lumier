#' Create the \code{site_model} argument
#' @author Richel J.C. Bilderbeek
lum_create_site_model_arg <- function(subst_model) {
  if (subst_model == "JC69") {
    return("create_jc69_site_model()")
  }
  if (subst_model == "HKY") {
    return("create_hky_site_model()")
  }
  if (subst_model == "TN93") {
    return("create_tn93_site_model()")
  }
  if (subst_model == "GTR") {
    return("create_gtr_site_model()")
  }
}
