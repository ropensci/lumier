#' Create the \code{tree_prior} argument
#' @author Richel J.C. Bilderbeek
lum_create_tree_prior_arg <- function(tree_prior) {
  if (tree_prior == "Yule Model") {
    return("create_yule_tree_prior()")
  }
  if (tree_prior == "Birth Death Model") {
    return("create_bd_tree_prior()")
  }
}
