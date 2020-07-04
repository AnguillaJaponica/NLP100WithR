library(dplyr)
library(stringr)
library(jsonlite) 

c("パトカー", "タクシー") %>% strsplit("") %>% unlist %>% matrix(nrow = 2, byrow = T) %>% paste(collapse = "")