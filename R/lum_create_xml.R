#' Show the XML file created by the displayed beautier command
#' @param beautier_cmd the \code{beautier} command
lum_create_xml <- function(beautier_cmd) {
  paste(
    eval(parse(text = paste(beautier_cmd, collapse = ""))),
    collapse = "\n"
  )
}
