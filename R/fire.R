#' Censored Keywords.
#'
#' A dataset containing censored keywords in Chinese digital and traditional media.
#'
#' @format A \link[tibble]{tibble} with 26,803 rows and 3 variables:
#' \describe{
#'   \item{title}{ Phrase or keyword censored.}
#'   \item{blocked_last_30_days}{ Amount of content related to \code{title} that is censored.}
#'   \item{title}{ Last changed in database.}
#' }
#' @source \url{https://en.greatfire.org/}
"censored_keywords"

#' Censored URLs.
#'
#' A dataset containing censored URLs in Chinese digital and traditional media.
#'
#' @format A \link[tibble]{tibble} with 88,122 rows and 3 variables:
#' \describe{
#'   \item{title}{ URL censored.}
#'   \item{blocked_last_30_days}{ Amount of content related to \code{title} that is censored.}
#'   \item{title}{ Last changed in database.}
#' }
#' @source \url{https://en.greatfire.org/}
"censored_urls"

#' Search
#' 
#' Convenience function to search through censored keywords and URLs.
#'
#' @param q Search query
#'
#' @name search
#' @export
search_url <- function(q = "github.com"){
  if(!exists("censored_urls"))
    stop("run `data(censored_urls)`", call. = FALSE)
  censored_urls[grepl(q, censored_urls$title), ]
}

#' @rdname search
#' @export
search_keywords <- function(q = "winnie"){
  if(!exists("censored_keywords"))
    stop("run `data(censored_keywords)`", call. = FALSE)
  censored_keywords[grepl(q, censored_keywords$title), ]
}

globalVariables(c("censored_keywords", "censored_urls"))