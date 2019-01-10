context("lum_create_site_model_arg")

test_that("use", {
  expect_equal(
    lum_create_site_model_arg("JC69"),
    "site_model = create_jc69_site_model()"
  )
  expect_equal(
    lum_create_site_model_arg("HKY"),
    "site_model = create_hky_site_model()"
  )
  expect_equal(
    lum_create_site_model_arg("TN93"),
    "site_model = create_tn93_site_model()"
  )
  expect_equal(
    lum_create_site_model_arg("GTR"),
    "site_model = create_gtr_site_model()"
  )
  expect_error(
    lum_create_site_model_arg("nonsense"),
    "Unknown substitution model"
  )
})
