test_that("OR_95CI can handle vectors", {
  expect_equal(OR_95CI(c(0,0), c(1, 1), c(2*(1 - pnorm(1)), 2*(1 - pnorm(1))), 3),  c("1.000 (0.368, 2.718)", "1.000 (0.368, 2.718)"))
})
