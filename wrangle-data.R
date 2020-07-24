# script to read the data and prepare a table that we can use for analysis
library(tidyverse)

murders <- read_csv("data/murders.csv")
murders <-murders %>% mutate(region = factor(region),
                             rate = total / population * 10^5)

# save() saves objects into what is called an rda file
save(murders, file = "rda/murders.rda")