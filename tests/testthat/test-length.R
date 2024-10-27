test_that("OR_95CI appropriately processes mismatches in vector lengths", {
  expect_equal(OR_95CI(c(0, 0, 0, 0), c(1, 1), 2 * (1 - pnorm(1)), 0),
               OR_95CI(c(0, 0, 0, 0), c(1, 1, 1, 1), 2 * (1 - pnorm(1)), 0))
})
