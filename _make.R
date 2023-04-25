#' Run Entire Project
#'
#' See `DESCRIPTION` file for further informations.
#'
#' @usage source(".make.R")
#'
#' @author Nicolas CASAJUS, \email{nicolas.casajus@@gmail.com}
#' @date 2020/05/23


## Install Missing Packages (listed in DESCRIPTION) ----

remotes::install_deps(upgrade = "never")


## Attach Required Packages (listed in `Depends` section in DESCRIPTION) ----

devtools::load_all()


## Retrieve Metadata and Covers (if required) ----

update_db()


## Update Website ----

website()


## Check Database ----

check_covers()
check_torrents()
check_slugs()


## New Movies ----

# omdbr::find_imdb_id("le visiteur du futur", year = 2022)


## Missing Covers ----

# omdbr::read_details(imdb_id = check_covers())[ , c("imdbid", "slug")]


## Wrongs Slugs ----

# omdbr::search_movies("black")
# imdbid <- "tt9155512"
# file.edit(here::here("assets", "data", paste0(imdbid, ".yml")))
# file.remove(here::here("assets", "data", paste0(imdbid, ".yml")))
# file.remove(here::here("assets", "covers", paste0(imdbid, ".jpg")))
