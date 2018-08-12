context("lum_create_mcmc_arg")

test_that("use", {
  expect_equal(
    lum_create_mcmc_arg(),
    "mcmc = create_mcmc(chain_length = 10000000, store_every = -1)"
  )
})
