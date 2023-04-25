#' Run an R Makefile
#'
#' This function sources the `_make.R` script located at the root of the project.
#' 
#' @importFrom here here
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' make()


make <- function() {
  
  source(here::here("_make.R"))
}
