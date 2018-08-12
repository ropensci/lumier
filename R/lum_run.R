# Run the application
#' Run \code{lumier} Shiny application.
#' @seealso
#'   The user interface is created by \link{lum_create_ui}.
#'   The Shiny server is created by \link{lum_create_server}.
#' @author Richel J.C. Bilderbeek
#' @export
lum_run <- function() {
  shiny::shinyApp(ui = lum_create_ui, server = lum_create_server)
}
