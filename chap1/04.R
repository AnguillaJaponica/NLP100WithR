str <-
  "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
index <- c(1, 5, 6, 7, 8, 9, 15, 16)
str %>% strsplit(" ") %>% unlist -> strs
strs <-
  Map(function(i)
    i %>% setNames(substring(strs[i], 1, ifelse(
      is.element(i, index), 1, 2
    ))), 1:length(strs)) %>% unlist()
strs
