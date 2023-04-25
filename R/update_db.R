#' Update Movie Informations and Covers
#' 
#' This function updates movie informations and covers.
#'
#' @param path Relative path to store movie details and covers.
#'
#' @return
#' 
#' @importFrom readxl read_xlsx
#' @importFrom here here
#' @importFrom omdbr get_details get_cover
#' @export
#' 
#' @author Nicolas Casajus, \email{nicolas.casajus@@gmail.com}
#'
#' @examples
#' update_db(path = "assets")


update_db <- function(path = "assets") {
  
  imdbids <- read.csv2(here::here("inst", "extdata", "to_add.csv"))
  
  imdbids <- imdbids$"imdb"
  imdbids <- imdbids[!is.na(imdbids)]
  imdbids <- sort(unique(imdbids))
  
  for (imdbid in imdbids) {
    
    yaml_exist <- list.files(
      path    = here::here(path, "data"), 
      pattern = paste0(imdbid, ".yml")
    )
    
    if (!length(yaml_exist)) {
      
      yaml <- omdbr::get_details(imdbid, here::here(path, "data"), print = FALSE)
    }
    
    jpeg_exist <- list.files(
      path    = here::here(path, "covers"), 
      pattern = paste0(imdbid, ".jpg")
    )
    
    if (!length(jpeg_exist)) {
      
      omdbr::get_cover(imdb_id = imdbid, path = here::here(path, "covers"))
    }
  }
}
