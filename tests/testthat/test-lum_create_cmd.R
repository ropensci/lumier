context("lum_create_cmd")

test_that("use", {
  cmd <- lumier:::lum_create_cmd(
    input_filename = beautier::get_beautier_path("anthus_aco_sub.fas")
  )
})
