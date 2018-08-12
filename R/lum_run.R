create_site_model_text <- function(subst_model) {
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

create_clock_model_text <- function(clock_model) {
  if (clock_model == "Strict Clock") {
    return("create_strict_clock_model()")
  }
  if (clock_model == "Relaxed Clock Log Normal") {
    return("create_rln_clock_model()")
  }
}

create_tree_prior_text <- function(tree_prior) {
  if (tree_prior == "Yule Model") {
    return("create_yule_tree_prior()")
  }
  if (tree_prior == "Birth Death Model") {
    return("create_bd_tree_prior()")
  }
}

create_mcmc_text <- function(ui) {
  paste(
    "  mcmc = create_mcmc(",
    paste0("    chain_length = ", ui$chain_length, ","),
    paste0("    store_every = ", ui$store_every),
    "  )",
    sep = "\n"
  )
}

#' Show the XML file created by the displayed beautier command
#' @param beautier_cmd the \code{beautier} command
lum_create_xml <- function(beautier_cmd) {
  paste(
    eval(parse(text = paste(beautier_cmd, collapse = ""))),
    collapse = "\n"
  )
}

# Run the application
#' Run \code{lumier} Shiny application
lum_run <- function() {
  shiny::shinyApp(ui = lum_create_ui, server = lum_create_server)
}
