#' Generate a Standard HTML Navbar
#'
#' This function generates an html navbar.
#'
#' @return An HTML narbar (string)
#' 
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' cat(paste0(html_navbar(), collapse = "\n"))


html_navbar <- function() {

  c(
    "  <body>\n",
    "    <nav class=\"navbar sticky-top navbar-expand-lg navbar-dark bg-dark\">",
    "      <div class=\"container-fluid\">",
    "        <a class=\"navbar-brand\" href=\"#\">",
    "          <img src=\"assets/logos/logo1.png\" width=\"80\">",
    "        </a>",
    "        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">",
    "          <span class=\"navbar-toggler-icon\"></span>",
    "        </button>",
    "        <div class=\"collapse navbar-collapse\" id=\"navbarNav\">",
    "          <ul class=\"navbar-nav\">",
    "            <li class=\"nav-item\">",
    "              <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Films</a>",
    "            </li>",
    "            <li class=\"nav-item\">",
    "              <a class=\"nav-link\" href=\"#\">Séries</a>",
    "            </li>",
    "          </ul>",
    "        </div>",
    "      </div>",
    "    </nav>\n",
    "    <br>\n"
  )
}
