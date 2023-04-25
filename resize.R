path_in <- file.path("", "Users", "nicolas", "Desktop")
path_ou <- file.path("", "Users", "nicolas", "Nextcloud", "Mediatek", 
                     "assets", "covers")

images <- list.files(path_in, pattern = "^tt.*jpg$")

for (image in images) {
  system(
    paste0("convert ", 
           file.path(path_in, image), 
           " -resize \"500x750!\" ", 
           file.path(path_ou, image)))
}
