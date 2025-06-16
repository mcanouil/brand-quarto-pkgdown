#!/usr/bin/env bash

(cd src/quarto && quarto render)

(
  cd src/rpkg &&
  Rscript -e 'pkgdown::build_site()'
)
