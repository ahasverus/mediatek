# Mediatek <img src="assets/logos/logo1.png" height="170" align="right"/>

[![pages-build-deployment](https://github.com/ahasverus/mediatek/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/ahasverus/mediatek/actions/workflows/pages/pages-build-deployment)

Site Web uniquement destiné à rouler en local.

1. Fork le dépôt.
2. Clone-le (chez moi il est sur mon disque dur externe et mes films sont dans le dossier `media` à la racine).
3. Supprime les dossiers `assets/data` et `assets/covers`.
4. Edite le fichier Excel `inst/extdata/movies_ids` (seule la colonne **IMDb** est importante, ça évite de devoir utiliser la fonction `omdbr::find_imdb_id()`).
5. Utilise la fonction `make()` (sous RStudio, elle est chargée au lancement) ou `source(".make.R")`

Cette fonction récupère les informations et les posters des films (si absents) et recompile la page web `index.html`.

Pour voir si ça marche, tu peux faire un `source(".make.R")` avant de supprimer les dossiers, et ouvrir `index.html` : tu verras les films que j'ai ;)

Enjoy !
