sections_UK <- str_extract_all(lines_UK, "==.*==") %>% unlist()
sections_UK <-
  matrix(
    c(
      sections_UK %>% str_extract_all("^=*") %>% unlist() %>% nchar() - 1,
      sections_UK %>% str_replace_all("\\s*={2,4}\\s*", "")
    ),
    ncol = 2
  )

sections_UK %>% apply(1, paste, collapse = " ") %>% cat(sep = '\n')
