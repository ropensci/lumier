#' Define user interface
lum_create_ui <- function() {
  shiny::fluidPage(
    shiny::shinyUI(
      shiny::sidebarLayout(
        sidebarPanel = shiny::navbarPage(
          title = "beautier",
          shiny::tabPanel(
            title = "Partitions",
            shiny::textInput("filename", "Filename", value = beautier::get_beautier_path("anthus_aco_sub.fas"), width = "100%")
          ),
          shiny::tabPanel("Tip Dates",
            "No input editors"
          ),
          shiny::tabPanel("Site Model",
            shiny::numericInput("subst_rate", "Substitution rate", value = 1.0, min = 0.0, max = 1.0),
            shiny::numericInput("gamma_cat_count", "Gamma category count", value = 0, min = 0, step = 1),
            shiny::numericInput("prop_invariant", "Proportion invariant", value = 0.0, min = 0.0, max = 1.0),
            shiny::selectInput("subst_model", "Site model", choices = c("JC69", "HKY", "TN93", "GTR"))
          ),
          shiny::tabPanel("Clock Model",
            shiny::selectInput("clock_model", "Clock model", choices = c("Strict Clock", "Relaxed Clock Log Normal"))
          ),
          shiny::tabPanel("Priors",
            shiny::selectInput("tree_prior", "Tree prior", choices = c("Yule Model", "Birth Death Model"))

          ),
          shiny::tabPanel("MCMC",
            shiny::numericInput("chain_length", "Chain Length", value = 10000000, min = 0, step = 1),
            shiny::numericInput("store_every", "Store Every", value = -1, min = -1, step = 1),
            shiny::numericInput("pre_burnin", "Pre Burnin", value = 0, min = 0, max = 0),
            shiny::numericInput("num_init", "Num Initialization Atte...", value = 10, min = 10, max = 10)
          )
        ),
        shiny::mainPanel(
          shiny::hr(),
          shiny::h1("beautier command"),
          "Use this in your R scripts:",
          shiny::verbatimTextOutput("result"),
          shiny::h1("Produced XML"),
          "Just for your interest :-)",
          shiny::verbatimTextOutput("xml"),
          width = 12
        )
      )
    )
  )
}
