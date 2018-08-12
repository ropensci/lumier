#' Define user interface
lum_create_ui <- function() {
  ui <- fluidPage(
    shinyUI(
      sidebarLayout(
        sidebarPanel = navbarPage(
          title = "beautier",
          tabPanel(
            title = "Partitions",
            textInput("filename", "Filename", value = beautier::get_beautier_path("anthus_aco_sub.fas"), width = "100%")
          ),
          tabPanel("Tip Dates",
            "No input editors"
          ),
          tabPanel("Site Model",
            numericInput("subst_rate", "Substitution rate", value = 1.0, min = 0.0, max = 1.0),
            numericInput("gamma_cat_count", "Gamma category count", value = 0, min = 0, step = 1),
            numericInput("prop_invariant", "Proportion invariant", value = 0.0, min = 0.0, max = 1.0),
            selectInput("subst_model", "Site model", choices = c("JC69", "HKY", "TN93", "GTR"))
          ),
          tabPanel("Clock Model",
            selectInput("clock_model", "Clock model", choices = c("Strict Clock", "Relaxed Clock Log Normal"))
          ),
          tabPanel("Priors",
            selectInput("tree_prior", "Tree prior", choices = c("Yule Model", "Birth Death Model"))

          ),
          tabPanel("MCMC",
            numericInput("chain_length", "Chain Length", value = 10000000, min = 0, step = 1),
            numericInput("store_every", "Store Every", value = -1, min = -1, step = 1),
            numericInput("pre_burnin", "Pre Burnin", value = 0, min = 0, max = 0),
            numericInput("num_init", "Num Initialization Atte...", value = 10, min = 10, max = 10)
          )
        ),
        mainPanel(
          hr(),
          h1("beautier command"),
          "Use this in your R scripts:",
          verbatimTextOutput("result"),
          h1("Produced XML"),
          "Just for your interest :-)",
          verbatimTextOutput("xml"),
          width = 12
        )
      )
    )
  )
  ui
}

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

create_mcmc_text <- function(input) {
  paste(
    "  mcmc = create_mcmc(",
    paste0("    chain_length = ", input$chain_length, ","),
    paste0("    store_every = ", input$store_every),
    "  )",
    sep = "\n"
  )
}

create_beautier_cmd <- function(input) {
  paste(
    "create_beast2_input(",
    paste0("  input_filenames = \"", input$filename, "\","),
    paste0("  site_models = ", create_site_model_text(input$subst_model), ","),
    paste0("  clock_models = ", create_clock_model_text(input$clock_model), ","),
    paste0("  tree_priors = ", create_tree_prior_text(input$tree_prior), ","),
    create_mcmc_text(input),
    ")",
    sep = "\n", collapse = "\n"
  )
}
create_xml <- function(beautier_cmd) {
  paste(
    eval(parse(text = paste(beautier_cmd, collapse = ""))),
    collapse = "\n"
  )
}

#' Define server logic
#' @param input the current user interface,
#'   as created by \link{lum_create_ui}
#' @param output the new, changed user interface
lum_create_server <- function(input, output) {

  output$result <- shiny::renderText({
    create_beautier_cmd(input)
  })

  output$xml <- shiny::renderText({
    create_xml(create_beautier_cmd(input))
  })

}

# Run the application
#' Run \code{lumier} Shiny application
lum_run <- function() {
  shiny::shinyApp(ui = lum_create_ui, server = lum_create_server)
}
