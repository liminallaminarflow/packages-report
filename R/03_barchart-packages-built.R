## remember to restart R here!
library(tidyverse)
library(magrittr)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

np_freqtable <- read_csv(here::here("data",
                                    "add-on-packages-freqtable.csv"))


## if you use ggplot2, code like this will work:
np_freqplot <- ggplot(np_freqtable,
                      aes(x = Built,
                          y = n)) +
               geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

ggsave(here::here("figs",
                  "built-barchart.png"),
       plot = np_freqplot)

## YES overwrite the file that is there now
## that's old output from me (Jenny)
