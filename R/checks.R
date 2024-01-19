check_slugs <- function(path = "D:/Films/movies/") {

  # Read Metadata ----
  
  yml <- unlist(omdbr::read_details()$slug)
  
  
  ## List MP4 ----
  
  mov <- list.files(file.path(path), pattern = "mp4$|mkv$|avi$|m4v$")
  mov <- gsub("\\.mp4$|\\.mkv$|\\.avi$|\\.m4v$", "", mov)
  
  ## Incorrect Slugs ----
  
  mov <- sort(mov[!(mov %in% yml)])
  
  if (length(mov)) {
    
    usethis::ui_oops(
      paste(
        usethis::ui_value(length(mov)),
        "movies need to be renamed (slugs)!"
      )
    )
    
    print(mov)
  
  } else {
    
    usethis::ui_done("No need to rename movies!")
  }
}

check_torrents <- function(path = "D:/Films/movies/") {
  
  ## Read Metadata ----
  
  yml <- unlist(omdbr::read_details()$slug)
  
  
  ## List MP4 ----
  
  mov <- list.files(file.path(path), pattern = "mp4$|mkv$|avi$|m4v$")
  mov <- gsub("\\.mp4$|\\.mkv$|\\.avi$|\\.m4v$", "", mov)
  
  
  ## Missing Movies ----
  
  yml <- sort(yml[!(yml %in% mov)])
  
  if (length(yml)) {
    
    usethis::ui_oops(
      paste(
        usethis::ui_value(length(yml)),
        "movies need to be downloaded!"
      )
    )
    
    print(yml)
    
  } else {
    
    usethis::ui_done("No need to download movies!")
  }
}

check_covers <- function() {
  
  ## Read Metadata ----
  
  yml <- unlist(omdbr::read_details()$imdbid)
  
  
  ## List MP4 ----
  
  cov <- list.files("assets/covers", pattern = "jpg$")
  cov <- gsub("\\.jpg$", "", cov)
  
  
  ## Missing Movies ----
  
  cov <- sort(yml[!(yml %in% cov)])
  
  if (length(cov)) {
    
    usethis::ui_oops(
      paste(
        usethis::ui_value(length(cov)),
        "covers need to be added!"
      )
    )
    
    print(cov)
    
  } else {
    
    usethis::ui_done("No need to add covers!")
  }
  
}
