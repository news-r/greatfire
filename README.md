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

Last updated: 2019-06-12 17:53:32

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
nrow(censored_keywords)
#> [1] 26803
head(censored_keywords)
#>                        title blocked_last_30_days             changed
#> 1          www.pinterest.com                    6 2012-09-23 20:13:39
#> 2                       占领                    6 2012-09-23 22:27:46
#> 3                       王悦                   33 2012-09-23 11:34:48
#> 4            "f**k" in china                   33 2019-06-05 16:57:17
#> 5                   "Github"                   33 2019-05-27 16:32:21
#> 6 "harmony" high-speed train                   33 2019-05-19 08:18:56

data(censored_urls)
nrow(censored_urls)
#> [1] 88122
head(censored_urls)
#>                                                                                                                                                        title
#> 1                                                                                                                          ftp://creatorsinpack.dynalias.com
#> 2 ftp://jinshu.myftp.org/book/400books/%E7%8E%8B%E5%8A%9B%E9%9B%84-------------%E6%88%91%E7%9A%84%E8%A5%BF%E5%9F%9F+%E4%BD%A0%E7%9A%84%E4%B8%9C%E5%9C%9F.txt
#> 3                                                                                                                        ftp://jinshu.myftp.org/gfw/new.html
#> 4                                                                                                                  ftp://jinshu.myftp.org:20021/gfw/new.html
#> 5                                                                                                                                      http://0.facebook.com
#> 6                                                                                                                                      http://000.1024gc.com
#>   blocked_last_30_days             changed
#> 1                  100 2019-05-07 19:22:32
#> 2                  100 2019-05-18 10:16:53
#> 3                  100 2019-05-06 20:36:55
#> 4                  100 2019-05-11 03:40:58
#> 5                  100 2019-04-30 01:43:52
#> 6                  100 2019-01-14 02:13:13
```

There are two convenience `search_*` functions to search through the data.


```r
gh <- search_urls("github.com") 
knitr::kable(gh)
```



|      |title                                                                   |blocked_last_30_days |changed             |
|:-----|:-----------------------------------------------------------------------|:--------------------|:-------------------|
|6161  |http://aoxu.github.com                                                  |50                   |2019-05-16 20:25:04 |
|22901 |http://gist.github.com                                                  |100                  |2019-05-31 18:59:30 |
|22902 |http://gist.github.com/acethical/40081f64eb1461ee6b66                   |100                  |2019-06-08 13:40:25 |
|22910 |http://github.com/bannedbook/fanqiang/wiki                              |100                  |2019-05-12 11:55:18 |
|22911 |http://github.com/getlantern/forum                                      |100                  |2019-04-20 05:13:15 |
|22912 |http://github.com/greatfire/wiki                                        |100                  |2019-05-07 12:45:12 |
|22913 |http://github.com/greatfire/wiki/issues                                 |100                  |2019-05-27 02:46:53 |
|22914 |http://github.com/htcc/m                                                |100                  |2019-04-08 18:36:35 |
|22915 |http://github.com/mothran/mongol                                        |100                  |2019-05-24 10:24:28 |
|28729 |http://nodeload.github.com/goagent/goagent/legacy.zip/3.0               |100                  |2019-05-29 03:02:28 |
|29141 |http://opendns.github.com/dnscrypt-osx-client                           |50                   |2019-06-03 17:36:57 |
|29354 |http://pages.github.com                                                 |50                   |2019-05-24 03:08:57 |
|63673 |http://www.google.com/search?q=gist.github.com                          |100                  |2019-04-27 11:59:23 |
|63678 |http://www.google.com/search?q=github.com                               |100                  |2019-06-05 14:08:49 |
|69528 |http://www.google.com/search?q=www.github.com                           |100                  |2019-05-28 04:37:38 |
|81004 |https://gist.github.com                                                 |50                   |2019-05-15 22:59:37 |
|81005 |https://gist.github.com/acethical/40081f64eb1461ee6b66                  |100                  |2019-05-29 13:19:55 |
|81006 |https://gist.github.com/anonymous/e6e9c344eff02dca5bc4                  |100                  |2019-04-16 12:09:00 |
|81007 |https://gist.github.com/cnrat/538bec6826f47a1288a1fb19ff73f821          |100                  |2019-05-25 18:39:27 |
|81008 |https://gist.github.com/laurieainley/7663756                            |100                  |2019-05-29 11:24:17 |
|81009 |https://gist.github.com/mandiwise/5954bbb2e95c011885ff                  |100                  |2019-04-06 22:46:22 |
|81010 |https://gist.github.com/maxwelleite/10774746                            |100                  |2019-04-07 08:37:01 |
|81011 |https://gist.github.com/rongmu/0e1c4341800c008b4649                     |50                   |2019-05-21 12:02:43 |
|81012 |https://gist.github.com/shenzhuxi/4635732                               |100                  |2019-04-20 01:55:47 |
|81013 |https://gist.github.com/udacityandroid/5cb10300bb10becb5f8185012b913c8e |100                  |2019-06-04 16:46:15 |
|81014 |https://gist.github.com/warpthatdot/27609e05c1d22e855f71ba5747d56281.js |100                  |2019-06-01 17:07:51 |
