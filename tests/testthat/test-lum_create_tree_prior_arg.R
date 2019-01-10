context("lum_create_tree_prior_arg")

test_that("use", {
  expect_equal(
    lum_create_tree_prior_arg("Yule Model"),
    "tree_prior = create_yule_tree_prior()"
  )
  expect_equal(
    lum_create_tree_prior_arg("Birth Death Model"),
    "tree_prior = create_bd_tree_prior()"
  )
  expect_error(
    lum_create_tree_prior_arg("nonsense"),
    "Unknown tree prior"
  )
})
