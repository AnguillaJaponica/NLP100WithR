cipher <- function(target_str) {
  Map(function(s) {
    raw_s <- as.integer(charToRaw(s))
    ifelse(
      as.integer(charToRaw("a")) <= raw_s &&
        raw_s <= as.integer(charToRaw("z")),
      rawToChar(as.raw(219 - raw_s)),
      s
    )
  }, target_str %>% strsplit("") %>% unlist()) %>% unlist() %>% paste(collapse = "")
}