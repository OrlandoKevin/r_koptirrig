#' Calculate Logistic Temperature
#'
#' This function computes a logistic temperature value based on the given
#' parameters.
#'
#' @param nTT [numeric] The input temperature value or thermal time.
#' @param alpha1 [numeric] A parameter that influences the shape of the logistic
#' function.
#' @param beta [numeric] A parameter that scales the logistic function.
#'
#' @return [numeric] The calculated logistic temperature value.
#'
#' @examples
#' # Example usage:
#' calcLogisticTemperature(nTT = 2, alpha1 = 1.5, beta = 0.5)
#'
#' @export
#' @rdname basic-calcLogisticTemperature
#'
calcLogisticTemperature <- function(nTT, alpha1, beta) {
  nTT^beta * exp(beta / alpha1 * (1 - nTT^alpha1))
}