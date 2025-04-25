#' Calculate Leaf Area Index (LAI)
#'
#' This function calculates the Leaf Area Index (LAI) based on the current LAI,
#' potential LAI growth, previous day's potential LAI, stress factor, and stress
#' nocivity factor.
#'
#' @param LAI [numeric] The current Leaf Area Index.
#' @param LAIp [numeric] The potential Leaf Area Index growth for the current
#' day.
#' @param LAIp_previousDay [numeric] The potential Leaf Area Index growth for
#' the previous day.
#' @param stress [numeric] A stress factor affecting the growth of LAI (e.g.,
#' water stress, nutrient stress).
#' @param stress_nocivity [numeric] A factor representing the nocivity
#' (severity) of the stress.
#'
#' @return [numeric] The updated Leaf Area Index after accounting for potential
#' growth and stress factors.
#'
#' @examples
#' # Example usage:
#' calcLeafAreaIndex(
#'   LAI = 2.5, LAIp = 3.0, LAIp_previousDay = 2.8, stress = 0.9,
#'   stress_nocivity = 1.2
#' )
#'
#' @export
#' @rdname basic-calcLeafAreaIndex
#'
calcLeafAreaIndex <- function(
  LAI, LAIp, LAIp_previousDay, stress, stress_nocivity
) {
  LAI + (LAIp - LAIp_previousDay) * stress ^ stress_nocivity
}

#' Calculate Potential Leaf Area Index
#'
#' This function calculates the potential leaf area index (LAI) based on the
#' thermal time (TL), initial leaf area index (LAI0), and maximum leaf area
#' index (LAImax).
#'
#' @param TL [numeric] Thermal time, a value between 0 and 1 representing the
#' proportion of the growing season completed.
#' @param LAI0 [numeric] Initial leaf area index at the start of the growing
#' season.
#' @param LAImax [numeric] Maximum leaf area index achievable during the growing
#' season.
#'
#' @return [numeric] The potential leaf area index at the given thermal time.
#'
#' @examples
#' # Example usage:
#' calcPotentialLeafAreaIndex(TL = 0.5, LAI0 = 0.2, LAImax = 3.0)
#' # Returns: 1.6
#'
#' @export
#' @rdname basic-calcPotentialLeafAreaIndex
#'
calcPotentialLeafAreaIndex <- function(TL, LAI0, LAImax) {
  LAI0 + (LAImax - LAI0) * TL
}