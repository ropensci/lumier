context("lum_create_gamma_site_model_arg")

test_that("use", {
  expect_equal(
    lum_create_gamma_site_model_arg(),
    ""
  )
  expect_equal(
    lum_create_gamma_site_model_arg(
      beautier::create_gamma_site_model(gamma_cat_count = 1)
    ),
    paste0(
      "gamma_site_model = create_gamma_site_model(",
        "gamma_cat_count = 1",
      ")"
    )
  )
  return()
  expect_equal(
    lum_create_gamma_site_model_arg(),
    paste0(
      "gamma_site_model = create_gamma_site_model(",
      "gamma_cat_count = 1, gamma_shape = 2,",
      "prop_invariant = 0.0, ",
      "gamma_shape_prior_distr = create_exp_distr(",
        "mean = create_mean_param(",
          "id = 0, ",
          "value = 1.0",
        ")",
      "), ",
      "freq_equilibrium = \"estimated\")"
    )
  )
})
