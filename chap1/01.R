library(dplyr)
library(stringr)
library(jsonlite) 

("パタトクカシーー" %>% strsplit("") %>% unlist)[c(T,F)] %>% paste(collapse = "")