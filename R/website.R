#' Generate an HTML Website
#'
#' This function generates an html website.
#'
#' @return Write the index.html page
#' 
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' website()


website <- function() {
  
  cat(
    paste0(
      c(
        html_header(), 
        html_navbar(), 
        html_content(), 
        html_footer()
      ), 
      collapse = "\n"
    ), 
    file   = here::here("index.html"),
    append = FALSE
  )
}
