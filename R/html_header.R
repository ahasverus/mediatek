#' Generate a Standard HTML Header
#'
#' This function generates an html header.
#'
#' @return An HTML header (string)
#' 
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' cat(paste0(html_header(), collapse = "\n"))


html_header <- function() {
  
  c(
    "<!DOCTYPE html>",
    "<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\">\n",
    "  <head>",
    "    <meta charset=\"utf-8\">",
    "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />",
    "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />",
    "    <title>Cinémathèque</title>",
    "    <link href=\"https://fonts.googleapis.com/css2?family=Courgette&family=Fredericka+the+Great&display=swap\" rel=\"stylesheet\">",
    "    <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap\" rel=\"stylesheet\">",
    "    <link type=\"text/css\" rel=\"stylesheet\" href=\"assets/css/style.css\">",
    "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1\" crossorigin=\"anonymous\">",
    "    <link rel=\"stylesheet\" href=\"assets/css/fontawesome-free-5.13.0-web/css/all.css\">",
    "    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW\" crossorigin=\"anonymous\"></script>",
    "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>",
    "    <script src=\"assets/js/functions.js\" defer></script>", 
    "  </head>\n"
  )
}
