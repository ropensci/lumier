# Run the application
#' Run \code{lumier} Shiny application.
#' @seealso
#'   The user interface is created by \link{lum_create_ui}.
#'   The Shiny server is created by \link{lum_create_server}.
#' @author Richel J.C. Bilderbeek
#' @export
lum_run <- function() {

  lum_create_ui <- NULL; rm(lum_create_ui) # nolint, fixes warning: no visible binding for global variable
  lum_create_server <- NULL; rm(lum_create_server) # nolint, fixes warning: no visible binding for global variable

  shiny::shinyApp(ui = lum_create_ui, server = lum_create_server)
}
