str_extract_all(lines_UK, "\\[\\[ファイル:.*?(\\||\\]\\])") %>% unlist() %>%
  str_replace_all("^\\[\\[ファイル:|\\|$|\\]\\]$", "") %>% cat(sep = "\n")
