library(dplyr)
library(stringr)
library(jsonlite) 

"stressed" %>% strsplit("") %>% unlist %>% rev %>% paste(collapse = "")