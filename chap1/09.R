typoglycemia <- function(target_str) {
  Map(function(s) {
    ifelse(nchar(s) > 4, {
      s %>% strsplit("") %>% unlist -> ss
      len_ss <- length(ss)
      c(ss[1], sample(ss[2:(len_ss - 1)], size = len_ss - 2), ss[len_ss]) %>% paste(collapse = "")
    }, s)
  }, target_str %>% strsplit(" ") %>% unlist()) %>% unlist() %>% paste(collapse = " ")
}

