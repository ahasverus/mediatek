#' Generate a Standard HTML Content
#'
#' This function generates an html content.
#'
#' @return An HTML content (string)
#' 
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' cat(paste0(html_content(), collapse = "\n"))


html_content <- function(path = "assets") {
  
  imdbids <- list.files(
    path    = here::here(path, "data"),
    pattern = ".yml$"
  )
  
  content <- ""
  
  if (length(imdbids)) {
    
    content <- c(content, 
      "    <div class=\"container\">\n",
      "      <div class=\"gallery\">",
      "        <h1 class=\"gallery-title\">CINEMATHEQUE</h1>",
      "      </div>\n"
    )
    
    counts   <- omdbr::count_movies(count_by = "genre")
    n_movies <- omdbr::count_movies()
    counts <- counts[order(counts$"genre"), ]
    
    counts   <- rbind(counts[1, ], counts)
    counts$"genre" <- as.character(counts$"genre")
    counts[1, "genre"]    <- "All"
    counts[1, "n_movies"] <- n_movies

    genres <- as.character(counts$"genre")
    
    content <- c(content, 
      "      <div class=\"buttons text-center\">"
    )
    
    for (genre in genres) {
      
      content <- c(content,
        paste0(
          "        ",
          "<button type=\"button\"",
          " class=\"btn btn-outline-secondary btn-sm filter-button\"",
          " data-filter=\"", tolower(genre), "\">", 
          paste0(genre, " (", counts[counts$"genre" == genre, "n_movies"], ")"),
          "</button>"
        )
      )
    }
    
    content <- c(content, "      </div>\n")
    content <- c(content, "      <br>\n")
 
       
    imdbids <- gsub("\\.yml", "", imdbids)
    
    movies <- omdbr::read_details(here::here(path, "data"))
    movies <- movies[(movies$imdbid %in% imdbids), ]
    
    movies  <- movies[order(unlist(movies$title)), ]
    imdbids <- unlist(movies$"imdbid")
    
    content <- c(content, "      <div class=\"gallery-list\">\n")
    
    for (i in 1:length(imdbids)) {
      
      genres <- tolower(paste0(unlist(movies[i, "genre"]), collapse = " "))
      content <- c(
        content,
        paste0(
          "        ",
          "<div class=\"gallery-item filter ",
          genres,
          "\">"
        ),
        paste0(
          "          ",
          "<a id=\"btn-", imdbids[i], "\" onClick=\"view_details(this.id)\" ",
          "data-keyboard=\"true\">"
        ),
        paste0(
          "            ",
          "<img class=\"gallery-item-img\" src=\"assets/covers/", imdbids[i], ".jpg\" />"
        ),
        "            <div class=\"gallery-item-hidden\">",
        "              <div class=\"gallery-item-title\">",
        paste0(
          "                <p>",
          unlist(movies[i, "title"]), "<br><br>(", unlist(movies[i, "year"]), ")</p>"
        ),
        "              </div>",
        "            </div>",
        "          </a>",
        "        </div>\n"
      )
      
      content <- c(
        content,
        paste0("        <div id=\"mod-", imdbids[i], "\" class=\"modal\">"),
        paste0("          <span class=\"modal-close\" id=\"cls-", imdbids[i], "\">&times;</span>"),
        paste0("          <img class=\"modal-image\" id=\"img-", imdbids[i], "\">"),
        paste0("          <div class=\"modal-text\" id=\"txt-", imdbids[i], "\">"),
        paste0("            <h1>", unlist(movies[i, "title"]), "</h1>"),
        paste0("            <p>",
          unlist(movies[i, "year"]),
          "<b>&nbsp;&nbsp;·&nbsp;&nbsp;</b>",
          paste0(unlist(movies[i, "genre"]), collapse = ", "),
          "<b>&nbsp;&nbsp;·&nbsp;&nbsp;</b>",
          paste0(unlist(movies[i, "country"]), collapse = ", "),
          "</p>"
        ),
        "            <p>",
        paste0(
          "              <img class=\"logo-imdb\" src=\"assets/logos/imdb.png\" />",
          "<span>&nbsp;&nbsp;<b>", unlist(movies[i, "imdbrating"]), "/10</b></span>"
        ),
        "            </p>",
        "            <br />",
        paste0(
          "            <p><i class=\"fab fa-hubspot\"></i>&nbsp;<b> Director:</b> ",
          paste0(unique(unlist(movies[i, "director"])), collapse = ", "),
          "</p>"
        ),
        paste0(
          "            <p><i class=\"fab fa-hubspot\"></i>&nbsp;<b> Writers:</b> ",
          paste0(unique(unlist(movies[i, "writer"])), collapse = ", "),
          "</p>"
        ),
        paste0(
          "            <p><i class=\"fab fa-hubspot\"></i>&nbsp;<b> Actors:</b> ",
          paste0(unique(unlist(movies[i, "actors"])), collapse = ", "),
          "</p>"
        ),
        "            <br />",
        paste0(
          "            <p><i>",
          unlist(movies[i, "plot"]),
          "</i></p>"
        ), 
        "          </div>",
        "          <br style=\"clear:both\" />",
        "        </div>\n"
      )
    }
  }
  
  content <- c(content, "      </div>\n")
  content
}
