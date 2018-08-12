#' Define server logic
#' @param input the current user interface,
#'   as created by \link{lum_create_ui}
#' @param output the new, changed user interface
#' @seealso
#'   The \code{beautier} command is created by \link{lum_create_beautier_cmd}.
#'   The BEAST2 XML code is created by \link{lum_create_xml}.
#' @author Richel J.C. Bilderbeek
lum_create_server <- function(input, output) {

  output$result <- shiny::renderText({
    lum_create_beautier_cmd_from_ui(input, as_file = TRUE)
  })

  output$xml <- shiny::renderText({
    lum_create_xml(lum_create_beautier_cmd_from_ui(input, as_file = FALSE))
  })

  output$log <- shiny::renderText({
    input$main_panel
  })

}
