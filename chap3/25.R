article_UK %>% str_extract_all("\\{\\{基礎情報.*?(\\{\\{.*?\\}\\}.*?)*?\\}\\}") %>% unlist() %>%
  strsplit("\\n", fixed = T) %>% unlist() %>% grep("^\\|", ., value = T) -> std_info_lines

std_info <-
  std_info_lines %>% str_extract_all("=\\s*.*?$") %>% unlist() %>% str_replace_all("^=\\s*", "")
names(std_info) <-
  std_info_lines %>% str_extract_all("^\\|.*?\\s*=") %>% unlist() %>% str_replace_all("^\\||\\s*=$", "")

matrix(c(names(std_info), std_info), ncol = 2) %>% apply(1, paste, collapse = ": ") %>% cat(sep = "\n")
