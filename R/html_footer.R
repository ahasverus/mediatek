#' Generate a Standard HTML Footer
#'
#' This function generates an html footer.
#'
#' @return An HTML footer (string)
#' 
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' cat(paste0(html_footer(), collapse = "\n"))


html_footer <- function() {
  
  paste0(
    "      <br />\n",
    "      <footer>",
    omdbr::count_movies(), 
    " movies&nbsp;&nbsp;&middot;&nbsp;&nbsp;",
    Sys.time(), 
    "</footer>\n",
    "      <br />\n",
    "    </div>\n",
    "  </body>\n",
    "</html>\n"
  )
}
