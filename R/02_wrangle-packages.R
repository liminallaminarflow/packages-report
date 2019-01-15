## remember to restart R here!
library(tidyverse)
library(magrittr)
## create a data frame by reading from data/installed-packages.csv

ipkgs <- read_csv(here::here("data",
                             "installed-packages.csv"))

## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:

non_priority_pkgs <- ipkgs %>%
  filter(is.na(Priority)) %>%
  select(Package,
         Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write_csv(non_priority_pkgs,
          here::here("data",
                     "add-on-packages.csv"))


## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:

np_pkgs_freqtable <- non_priority_pkgs %>%
  count(Built) %>%
  mutate(built_proportion = n / sum(n))


## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write_csv(np_pkgs_freqtable,
          here::here("data",
                     "add-on-packages-freqtable.csv"))

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
