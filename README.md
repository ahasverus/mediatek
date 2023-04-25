# Mediatek <img src="assets/logos/logo1.png" height="170" align="right"/>

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![pages-build-deployment](https://github.com/ahasverus/mediatek/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/ahasverus/mediatek/actions/workflows/pages/pages-build-deployment)

The collection of movies I watched.



## Usage

1. Fork and clone the repo
2. Clone the repo
3. Delete `assets/data` and `assets/covers` to start from scratch
4. Add movies IMDB identifiers in `inst/extdata/to_add.csv`
5. Source the `_make.R` to find movies metadata and covers and update the `index.html`



## Note

This project uses the [OMDB API](https://www.omdbapi.com/) and the R package [`omdbr`](https://github.com/inSileco/omdbr) I developed.
