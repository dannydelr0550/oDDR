#' @title Odds Ratios and 95\% Confidence Intervals from Logistic Regression Results
#' @description A function that returns the point estimate and 95\% CI of the Odds Ratios corresponding to an inputted set of coefficients and standard errors from logistic regression.
#' @param coef numeric vector
#' @param se numeric vector equal in length to coef
#' @param siglevel the value of alpha, or the type 1 error rate, such that the output produces a 100(1 - siglevel)\% CI.
#' @param roundto the amount of digits after the decimal point to round each value to.
#' @return a string containing the computed point estimates and SEs.
#' @author Daniel Del Rosso
#' @examples
#' OR_95CI(0, 1, 0.95, 3)
#' @export
#' @importFrom stats qnorm

OR_95CI <- function(coef, se, siglevel, roundto){
  q <- 1 - siglevel / 2
  OR <- exp(coef)
  ORlcl <- exp(coef - qnorm(q) * se)
  ORucl <- exp(coef + qnorm(q) * se)
  ORresult <- paste0(format(round(OR, roundto), nsmall = roundto),
                     " (",
                     format(round(ORlcl, roundto), nsmall = roundto),
                     ", ",
                     format(round(ORucl, roundto), nsmall = roundto),
                     ")"
  )
  return(ORresult)
}
