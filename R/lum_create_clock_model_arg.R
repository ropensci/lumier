lum_create_clock_model_arg <- function(clock_model) {
  if (clock_model == "Strict Clock") {
    return("create_strict_clock_model()")
  }
  if (clock_model == "Relaxed Clock Log Normal") {
    return("create_rln_clock_model()")
  }
}
