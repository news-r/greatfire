
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/greatfire.svg?branch=master)](https://travis-ci.org/news-r/greatfire) [![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/news-r/greatfire?branch=master&svg=true)](https://ci.appveyor.com/project/news-r/greatfire) <!-- badges: end -->

greatfire
=========

Datasets of keywords and urls censored on the Chinese internet, taken from [greatfire.org](https://en.greatfire.org/)

:construction: Note
-------------------

Though not publicly mentioned [greatfire.org](https://en.greatfire.org/) has an API publicly available, it's not difficult to uncover. However, as I very much appreciate their project this package does not provide direct access to it and instead provides two datasets that I pledge to keep updated. If it is too outdated please open an issue.

Last updated: 2019-11-16 23:12:27

Installation
------------

You can install `greatfire` from Github using via the `remotes` or `devtools` package.

``` r
# install.packages("remotes")
remotes::install_github("news-r/greatfire")
```

Example
-------

Both datasets are rather large and therefore not lazily loaded, you therefore have to explicitly call the `data` function.

``` r
library(greatfire)

data(censored_keywords)
nrow(censored_keywords)
#> [1] 27387
head(censored_keywords)
#> # A tibble: 6 x 3
#>   title                          blocked_last_30_days changed            
#>   <chr>                          <chr>                <dttm>             
#> 1 www.pinterest.com              6                    2012-09-23 20:13:39
#> 2 占领                           6                    2012-09-23 22:27:46
#> 3 王悦                           33                   2012-09-23 11:34:48
#> 4 "\"f**k\" in china"            33                   2019-07-20 05:25:09
#> 5 "\"Github\""                   33                   2019-06-19 16:58:47
#> 6 "\"harmony\" high-speed train" 33                   2019-07-03 13:53:26

data(censored_urls)
nrow(censored_urls)
#> [1] 89322
head(censored_urls)
#> # A tibble: 6 x 3
#>   title                                    blocked_last_30_… changed            
#>   <chr>                                    <chr>             <dttm>             
#> 1 ftp://creatorsinpack.dynalias.com        100               2019-05-07 19:22:32
#> 2 ftp://jinshu.myftp.org/book/400books/%E… 100               2019-05-18 10:16:53
#> 3 ftp://jinshu.myftp.org/gfw/new.html      100               2019-05-06 20:36:55
#> 4 ftp://jinshu.myftp.org:20021/gfw/new.ht… 100               2019-05-11 03:40:58
#> 5 http://0.facebook.com                    100               2019-07-05 16:15:49
#> 6 http://000.1024gc.com                    100               2019-06-21 07:58:36
```

There are two convenience `search_*` functions to search through the data.

``` r
gh <- search_urls("github.com") 
knitr::kable(gh)
```

| title                                                                     | blocked\_last\_30\_days | changed             |
|:--------------------------------------------------------------------------|:------------------------|:--------------------|
| <http://aoxu.github.com>                                                  | 50                      | 2019-07-11 17:43:34 |
| <http://fanzuoyong.github.com>                                            | 33                      | 2019-07-11 17:56:18 |
| <http://gist.github.com>                                                  | 100                     | 2019-07-17 03:16:23 |
| <http://gist.github.com/acethical/40081f64eb1461ee6b66>                   | 100                     | 2019-06-08 13:40:25 |
| <http://github.com/bannedbook/fanqiang/wiki>                              | 100                     | 2019-07-31 21:25:07 |
| <http://github.com/getlantern>                                            | 100                     | 2019-07-28 09:03:55 |
| <http://github.com/getlantern/forum>                                      | 100                     | 2019-07-05 23:12:16 |
| <http://github.com/greatfire/wiki>                                        | 100                     | 2019-07-26 04:07:25 |
| <http://github.com/greatfire/wiki/issues>                                 | 100                     | 2019-07-19 15:03:19 |
| <http://github.com/htcc/m>                                                | 100                     | 2019-06-28 22:59:31 |
| <http://github.com/mothran/mongol>                                        | 100                     | 2019-05-24 10:24:28 |
| <http://nodeload.github.com/goagent/goagent/legacy.zip/3.0>               | 100                     | 2019-07-14 23:44:30 |
| <http://opendns.github.com/dnscrypt-osx-client>                           | 33                      | 2019-07-26 14:38:35 |
| <http://pages.github.com>                                                 | 20                      | 2019-07-28 14:43:50 |
| <http://www.google.com/search?q=gist.github.com>                          | 100                     | 2019-07-09 23:23:29 |
| <http://www.google.com/search?q=github.com>                               | 100                     | 2019-06-05 14:08:49 |
| <http://www.google.com/search?q=www.github.com>                           | 100                     | 2019-07-11 18:02:40 |
| <https://gist.github.com>                                                 | 100                     | 2019-07-31 19:15:35 |
| <https://gist.github.com/acethical/40081f64eb1461ee6b66>                  | 100                     | 2019-05-29 13:19:55 |
| <https://gist.github.com/anonymous/e6e9c344eff02dca5bc4>                  | 100                     | 2019-07-31 06:13:51 |
| <https://gist.github.com/cnrat/538bec6826f47a1288a1fb19ff73f821>          | 100                     | 2019-05-25 18:39:27 |
| <https://gist.github.com/laurieainley/7663756>                            | 100                     | 2019-05-29 11:24:17 |
| <https://gist.github.com/mandiwise/5954bbb2e95c011885ff>                  | 100                     | 2019-06-27 02:07:50 |
| <https://gist.github.com/maxwelleite/10774746>                            | 100                     | 2019-06-27 11:39:40 |
| <https://gist.github.com/rongmu/0e1c4341800c008b4649>                     | 67                      | 2019-07-14 15:16:32 |
| <https://gist.github.com/shenzhuxi/4635732>                               | 100                     | 2019-07-05 20:48:41 |
| <https://gist.github.com/udacityandroid/5cb10300bb10becb5f8185012b913c8e> | 100                     | 2019-06-04 16:46:15 |
| <https://gist.github.com/warpthatdot/27609e05c1d22e855f71ba5747d56281.js> | 100                     | 2019-06-01 17:07:51 |
| <https://github.com>                                                      | 3                       | 2019-07-28 16:27:49 |
