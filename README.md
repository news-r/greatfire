---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->


<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/greatfire.svg?branch=master)](https://travis-ci.org/news-r/greatfire)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/news-r/greatfire?branch=master&svg=true)](https://ci.appveyor.com/project/news-r/greatfire)
<!-- badges: end -->

# greatfire

Datasets of keywords and urls censored on the Chinese internet, taken from [greatfire.org](https://en.greatfire.org/)

## :construction: Note

Though not publicly mentioned [greatfire.org](https://en.greatfire.org/) has an API publicly available, it's not difficult to uncover. However, as I very much appreciate their project this package does not provide direct access to it and instead provides two datasets that I pledge to keep updated. If it is too outdated please open an issue.

Last updated: 2019-06-11 22:30:07

## Installation

You can install `greatfire` from Github using via the `remotes` or `devtools` package.

``` r
# install.packages("remotes")
remotes::install_github("news-r/greatfire")
```

## Example

Both datasets are rather large and therefore not lazily loaded, you therefore have to explicitly call the `data` function.


```r
library(greatfire)

data(censored_keywords)
dim(censored_keywords)
#> [1] 26803     3
head(censored_keywords)
#> # A tibble: 6 x 3
#>   title                          blocked_last_30_days changed            
#>   <chr>                          <chr>                <dttm>             
#> 1 www.pinterest.com              6                    2012-09-23 20:13:39
#> 2 占领                           6                    2012-09-23 22:27:46
#> 3 王悦                           33                   2012-09-23 11:34:48
#> 4 "\"f**k\" in china"            33                   2019-06-05 16:57:17
#> 5 "\"Github\""                   33                   2019-05-27 16:32:21
#> 6 "\"harmony\" high-speed train" 33                   2019-05-19 08:18:56

data(censored_urls)
dim(censored_urls)
#> [1] 88122     3
head(censored_urls)
#> # A tibble: 6 x 3
#>   title                               blocked_last_30_… changed            
#>   <chr>                               <chr>             <dttm>             
#> 1 ftp://creatorsinpack.dynalias.com   100               2019-05-07 19:22:32
#> 2 ftp://jinshu.myftp.org/book/400boo… 100               2019-05-18 10:16:53
#> 3 ftp://jinshu.myftp.org/gfw/new.html 100               2019-05-06 20:36:55
#> 4 ftp://jinshu.myftp.org:20021/gfw/n… 100               2019-05-11 03:40:58
#> 5 http://0.facebook.com               100               2019-04-30 01:43:52
#> 6 http://000.1024gc.com               100               2019-01-14 02:13:13
```
