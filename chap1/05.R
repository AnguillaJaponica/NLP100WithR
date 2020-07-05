n_gram <- function(input_seq, n = 2) {
  if (n == 1)
    return(input_seq)
  embed(input_seq, n)[, n:1] %>% asplit(1)
}

n_gram("I am an NLPer" %>% strsplit(" ") %>% unlist())
n_gram("I am an NLPer" %>% strsplit("") %>% unlist())