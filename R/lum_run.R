# Run the application
#' Run \code{lumier} Shiny application
lum_run <- function() {
  shiny::shinyApp(ui = lum_create_ui, server = lum_create_server)
}
