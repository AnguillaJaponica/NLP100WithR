std_info_lines <- std_info_lines %>% str_replace_all("''|'''", "")

std_info <- std_info_lines %>% str_extract_all("=\\s*.*?$") %>% unlist() %>% str_replace_all("^=\\s*", "")
names(std_info) <- std_info_lines %>% str_extract_all("^\\|.*?\\s*=") %>% unlist() %>% str_replace_all("^\\||\\s*=$", "")