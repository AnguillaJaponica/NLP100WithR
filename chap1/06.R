n_gram <- function(input_seq, n = 2) {
  if (n == 1)
    return(input_seq)
  embed(input_seq, n)[, n:1] %>% asplit(1)
}

bi_gram_x <-
  n_gram("paraparaparadise" %>% strsplit("") %>% unlist()) %>% unlist() %>% matrix(nrow = 2) %>% apply(2, paste, collapse = "")
bi_gram_y <-
  n_gram("paragraph" %>% strsplit("") %>% unlist()) %>% unlist() %>% matrix(nrow = 2) %>% apply(2, paste, collapse = "")

union(bi_gram_x, bi_gram_y)
intersect(bi_gram_x, bi_gram_y)
setdiff(bi_gram_x, bi_gram_y)
is.element("se", bi_gram_x)
is.element("se", bi_gram_y)