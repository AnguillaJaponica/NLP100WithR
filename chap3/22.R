categories_UK %>% str_replace_all("^\\[\\[Category:|\\]\\]$", "") %>% cat(sep = '\n')
