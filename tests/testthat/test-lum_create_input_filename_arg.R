context("lum_create_input_filename_arg")

test_that("use", {
  expect_equal(
    lum_create_input_filename_arg("test.fas"),
    "input_filenames = \"test.fas\""
  )
})
