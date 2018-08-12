context("lum_create_cmd")

test_that("use", {
  cmd <- lum_create_cmd(
    filename = beautier::get_beautier_path("anthus_aco_sub.fas")
  )
})
