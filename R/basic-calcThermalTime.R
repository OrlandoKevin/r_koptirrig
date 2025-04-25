#' Calculate Thermal Time
#'
#' This function calculates the cumulative thermal time based on a vector of
#' temperatures and a specified base temperature. Thermal time is calculated as
#' the cumulative sum of the positive differences between the temperature and
#' the base temperature.
#'
#' @param temp [numeric] vector of temperatures.
#' @param temp_base [numeric] value representing the base temperature.
#' Temperatures below this value will not contribute to the thermal time.
#'
#' @return [numeric] vector of the same length as `temp`, representing the
#' cumulative thermal time at each point.
#'
#' @examples
#' # Example usage:
#' temperatures <- c(10, 15, 20, 25)
#' base_temp <- 12
#' calcThermalTime(temperatures, base_temp)
#' # Output: 0 3 11 24
#'
#' @export
#' @rdname basic-calcThermalTime
#' 
calcThermalTime <- function(temp, temp_base) {
  cumsum(pmax(temp - temp_base, 0))
}