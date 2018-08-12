#' Define user interface
#' @author Richel J.C. Bilderbeek
lum_create_ui <- function() {
  shiny::fluidPage(
    shiny::shinyUI(
      shiny::sidebarLayout(
        sidebarPanel = shiny::navbarPage(
          id = "main_panel",
          title = "beautier",
          shiny::tabPanel(
            title = "Partitions",
            shiny::textInput("input_filename", "Filename (.fas)",
              value = beautier::get_beautier_path("anthus_aco_sub.fas"),
              width = "100%"
            ),
            shiny::textInput(
              "output_filename", "Output filename (.XML)",
              value = "beast2.xml", width = "100%"
            )
          ),
          shiny::tabPanel("Tip Dates",
            "No input editors"
          ),
          shiny::tabPanel("Site Model",
            shiny::numericInput(
              "subst_rate", "Substitution rate",
              value = 1.0, min = 0.0, max = 1.0
            ),
            shiny::numericInput(
              "gamma_cat_count", "Gamma category count",
              value = 0, min = 0, step = 1
            ),
            shiny::numericInput(
              "prop_invariant", "Proportion invariant",
              value = 0.0, min = 0.0, max = 1.0
            ),
            shiny::navbarPage(title = "Subst Model", id = "subst_model",
              shiny::tabPanel(title = "JC69"),
              shiny::tabPanel(title = "HKY",
                shiny::numericInput("kappa", "Kappa", value = 2.0, min = 0),
                shiny::checkboxInput(
                  "estimate_kappa", "Estimate", value = TRUE
                ),
                shiny::selectInput(
                  "hky_frequencies", "Frequencies",
                  c("Estimated", "Empirical", "All Equal")
                )
              ),
              shiny::tabPanel(title = "TN93",
                shiny::numericInput("kappa_1", "Kappa1", value = 2.0, min = 0),
                shiny::checkboxInput(
                  "estimate_kappa_1", "Estimate", value = TRUE
                ),
                shiny::numericInput("kappa_2", "Kappa2", value = 2.0, min = 0),
                shiny::checkboxInput(
                  "estimate_kappa_2", "Estimate", value = TRUE
                ),
                shiny::selectInput(
                  "tn93_frequencies", "Frequencies",
                  c("Estimated", "Empirical", "All Equal")
                )
              ),
              shiny::tabPanel(title = "GTR",
                shiny::numericInput(
                  "rate_ac", "Rate AC", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_ac", "Estimate", value = TRUE
                ),
                shiny::numericInput(
                  "rate_ag", "Rate AG", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_ag", "Estimate", value = TRUE
                ),
                shiny::numericInput(
                  "rate_at", "Rate AT", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_at", "Estimate", value = TRUE
                ),
                shiny::numericInput(
                  "rate_cg", "Rate CG", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_cg", "Estimate", value = TRUE
                ),
                shiny::numericInput(
                  "rate_ct", "Rate CT", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_ct", "Estimate", value = FALSE
                ),
                shiny::numericInput(
                  "rate_gt", "Rate GT", value = 1.0, min = 0.0
                ),
                shiny::checkboxInput(
                  "estimate_rate_gt", "Estimate", value = TRUE
                ),
                shiny::selectInput(
                  "gtr_frequencies", "Frequencies",
                  c("Estimated", "Empirical", "All Equal")
                )
              )
            )
          ),
          shiny::tabPanel("Clock Model",
            shiny::selectInput(
              "clock_model", "Clock model",
              choices = c("Strict Clock", "Relaxed Clock Log Normal")
            )
          ),
          shiny::tabPanel("Priors",
            shiny::selectInput(
              "tree_prior", "Tree prior",
              choices = c("Yule Model", "Birth Death Model")
            )
          ),
          shiny::tabPanel("MCMC",
            shiny::numericInput(
              "chain_length", "Chain Length",
              value = 10000000, min = 0, step = 1
            ),
            shiny::numericInput(
              "store_every", "Store Every", value = -1, min = -1, step = 1
            ),
            shiny::numericInput(
              "pre_burnin", "Pre Burnin", value = 0, min = 0, max = 0
            ),
            shiny::numericInput(
              "num_init", "Num Initialization Atte...",
              value = 10, min = 10, max = 10
            )
          )
        ),
        shiny::mainPanel(
          shiny::hr(),
          shiny::h1("beautier command"),
          "Use this in your R scripts:",
          shiny::verbatimTextOutput("result"),
          shiny::hr(),
          shiny::h1("Produced XML"),
          "Just for your interest :-)",
          shiny::verbatimTextOutput("xml"),
          shiny::hr(),
          "For debugging:",
          shiny::verbatimTextOutput("log"),
          width = 12
        )
      )
    )
  )
}
