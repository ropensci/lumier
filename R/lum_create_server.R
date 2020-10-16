#' Define server logic
#' @inheritParams default_params_doc
#' @seealso
#'   The \code{beautier} command is created by \link{lum_create_beautier_cmd}.
#'   The BEAST2 XML code is created by \link{lum_create_xml}.
#' @author Richèl J.C. Bilderbeek
lum_create_server <- function(input, output) {

  lum_create_full_cmd_from_ui <- NULL; rm(lum_create_full_cmd_from_ui) # nolint, fixes warning: no visible binding for global variable
  lum_create_xml <- NULL; rm(lum_create_xml) # nolint, fixes warning: no visible binding for global variable

  output$result <- shiny::renderText({
    lum_create_full_cmd_from_ui(input, as_file = TRUE)
  })

  output$xml <- shiny::renderText({
    lum_create_xml(lum_create_full_cmd_from_ui(input, as_file = FALSE))
  })

  output$log <- shiny::renderText({
    input$subst_model_again
  })

}
