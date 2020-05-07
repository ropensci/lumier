#' Create the \code{tree_prior} argument
#' @inheritParams default_params_doc
#' @author Richèl J.C. Bilderbeek
lum_create_tree_prior_arg <- function(tree_prior) {
  arg <- "tree_prior ="
  if (tree_prior == "Yule Model") {
    return(paste(arg, "create_yule_tree_prior()"))
  }
  if (tree_prior == "Birth Death Model") {
    return(paste(arg, "create_bd_tree_prior()"))
  }
  stop("Unknown tree prior")
}
