context("lum_create_clock_model_arg")

test_that("use", {

  expect_equal(
    lum_create_clock_model_arg("Strict Clock"),
    "clock_model = create_strict_clock_model()"
  )
  expect_equal(
    lum_create_clock_model_arg("Relaxed Clock Log Normal"),
    "clock_model = create_rln_clock_model()"
  )
  expect_error(
    lum_create_clock_model_arg("nonsense"),
    "Unknown clock model"
  )
})
