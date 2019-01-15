# master script to run wtf-packages-report

source(here::here("R",
                  "01_write-installed-packages.R"))


source(here::here("R",
                  "02_wrangle-packages.R"))


source(here::here("R",
                  "03_barchart-packages-built.R"))


source(here::here("R",
                  "04_cleanup.R"))
