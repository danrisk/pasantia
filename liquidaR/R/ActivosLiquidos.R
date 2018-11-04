#' Activos Liquidos.
#'
#' \code{ActLiquidos} Devuelve un data frame que continen los 
#'   Activos Liquidos de Balance.
#'
#' This is a generic function: methods can be defined for it directly
#' or via the \code{\link{Summary}} group generic. For this to work properly,
#' the arguments \code{...} should be unnamed, and dispatch is on the
#' first argument.
#'
#' @param Disp Vector que contiene la cuenta Disponibilidades.
#' @param BCV Vector que contiene lo dispuesto en Encaje Legal.
#' @param BOIFP Vector que contiene activos dispuestos en otros
#'   bancos o instituciones financieras dentro del pais.
#' @param BCE Vector que contiene activos dispuestos en bancos
#'   corresponsales en el exterior.
#' @param ITVPN Vector que contiene las inversiones en titulos
#'   valores para negociar.
#' @return Si todas los parametros estan definidos entonces la funcion
#'   devuelve un data frame que contiene los activos liquidos 
#'   necesarios para la evaluacion de los indicadores contable 
#'   de liquidez.
#'   

ActLiquidos <- function(Disp, BCV, BOIFP, BCE, ITVPN){
  
  x <- cbind(Disp, BCV, BOIFP, BCE, ITVPN)
  
  return(x)
  
}