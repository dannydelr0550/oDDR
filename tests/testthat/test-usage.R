test_that("OR_95CI produces results that can be visually confirmed", {
  expect_equal(OR_95CI(0, 1, 2*(1 - pnorm(1)), 3),  "1.000 (0.368, 2.718)")
})
