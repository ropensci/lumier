#' Define server logic
#' @param input the current user interface,
#'   as created by \link{lum_create_ui}
#' @param output the new, changed user interface
lum_create_server <- function(input, output) {

  output$result <- shiny::renderText({
    lum_create_beautier_cmd(input)
  })

  output$xml <- shiny::renderText({
    lum_create_xml(lum_create_beautier_cmd(input))
  })

}
