#' Calculate Normalized Thermal Time
#'
#' This function calculates the normalized thermal time by dividing the thermal
#' time (TT) by the maximum thermal time for leaf area index (TT_LAImax).
#'
#' @param TT [numeric] The thermal time value.
#' @param TT_LAImax [numeric] The maximum thermal time for leaf area index.
#'
#' @return [numeric] The normalized thermal time, which is the ratio of TT to
#' TT_LAImax.
#'
#' @examples
#' # Example usage:
#' calcNormalizedThermalTime(50, 100)
#' # [1] 0.5
#'
#' @export
#' @rdname basic-calcNormalizedThermalTime
#'
calcNormalizedThermalTime <- function(TT, TT_LAImax) {
  TT / TT_LAImax
}