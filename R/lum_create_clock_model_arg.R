#' Create the \code{clock_model} argument
#' @author Richel J.C. Bilderbeek
lum_create_clock_model_arg <- function(clock_model) {
  arg <- "clock_models ="
  if (clock_model == "Strict Clock") {
    return(paste(arg, "create_strict_clock_model()"))
  }
  if (clock_model == "Relaxed Clock Log Normal") {
    return(paste(arg, "create_rln_clock_model()"))
  }
  stop("Unknown clock model")
}
