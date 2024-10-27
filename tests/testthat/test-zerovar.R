test_that("OR_95CI properly processes zero-variance coefficients", {
  expect_equal(OR_95CI(0, 0, 2*(1 - pnorm(1)), 0),  "1 (1, 1)")
})
