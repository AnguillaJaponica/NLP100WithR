make_time_message <- function(hour, item, degree) {
  sprintf("%s時の%sは%s", hour, item, degree)
}

make_time_message(12, "気温", 22.4)