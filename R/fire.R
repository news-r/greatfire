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