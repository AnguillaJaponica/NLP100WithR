data <- readLines("data/jawiki-country.json")
article_UK <- grep(".\"title\": \"イギリス\"\\}$", data, value = T)
lines_UK <- article_UK %>% strsplit("\\n", fixed = T) %>% unlist()