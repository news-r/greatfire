# KEYWORDS
keywords_json <- httr::GET("https://en.greatfire.org/api?type=keyword&min_blocked=1")
keywords_content <- httr::content(keywords_json)
keywords <- purrr::map_dfr(keywords_content, tibble::as_tibble)

library(dplyr)

censored_keywords <- keywords %>% 
  mutate(
    changed = as.integer(changed),
    changed = as.POSIXct(changed, origin = "1970-01-01"),
    title = trimws(title)
  )

# URLS
url_json <- httr::GET("https://en.greatfire.org/api?type=url&min_blocked=1")
url_content <- httr::content(url_json)
urls <- purrr::map_dfr(url_content, tibble::as_tibble)

censored_urls <- urls %>% 
  mutate(
    changed = as.integer(changed),
    changed = as.POSIXct(changed, origin = "1970-01-01"),
    title = trimws(title)
  )

usethis::use_data(censored_keywords, censored_urls, overwrite = TRUE)
