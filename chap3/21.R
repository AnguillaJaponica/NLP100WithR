lines_UK %>% str_extract_all("\\[\\[Category:.*\\]\\]") %>% unlist() -> categories_UK
cat(categories_UK, sep='\n')