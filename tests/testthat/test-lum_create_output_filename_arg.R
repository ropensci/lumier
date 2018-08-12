context("lum_create_output_filename_arg")

test_that("use", {
  expect_equal(
    lum_create_output_filename_arg("test.xml"),
    "output_filename = \"test.xml\""
  )
})
