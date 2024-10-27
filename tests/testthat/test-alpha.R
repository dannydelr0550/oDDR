test_that("OR_95CI can handle different error rates", {
  expect_equal(OR_95CI(c(log(2),log(2)), c(1, 1), c(2*(1 - pnorm(log(3))), 2*(1 - pnorm(log(2)))), 2),  c("2.00 (0.67, 6.00)", "2.00 (1.00, 4.00)"))
})
