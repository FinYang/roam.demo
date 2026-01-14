
<!-- README.md is generated from README.Rmd. Please edit that file -->

# roam.demo

<!-- badges: start -->

<!-- badges: end -->

The goal of roam.demo is to demonstrate the use of
[`roam`](https://github.com/FinYang/roam) in a package.

This package contains two (remote) dataset.

- `bee`: Bee colony data from the 2022-01-11 [TidyTuesday
  project](https://github.com/rfordatascience/tidytuesday).
- `tidytuesday2026Jan`: Versioned data from 2026-01-13 and 2026-01-20
  [TidyTuesday project](https://github.com/rfordatascience/tidytuesday)
  - Includes versions `2026-01-13` and `2026-01-20`

## Installation

You can install the development version of roam.demo like so:

``` r
# install.packages("remotes")
remotes::install_github("FinYang/roam.demo")
```

## Documentation

The documentation in this package is generated using `roxygen2`. For
each roam object, the `format` tag must be explicitly defined. When
`roxygen2` generates the *Format* section, it evaluates the object and
records the structure of the resulting output. If a roam object is not
cached locally, this evaluation returns `NULL`, and the documented
format will incorrectly reflect a `NULL` object. As a result, the
generated documentation may vary across devices depending on their local
cache state. To avoid this inconsistency, the `format` tag should always
be explicitly specified for roam objects.

## Example

``` r
library(roam.demo)
#> Loading required package: roam
options(roam.autodownload = TRUE)

head(bee)
#>   X year        months       state colony_n colony_max colony_lost
#> 1 1 2015 January-March     Alabama     7000       7000        1800
#> 2 2 2015 January-March     Arizona    35000      35000        4600
#> 3 3 2015 January-March    Arkansas    13000      14000        1500
#> 4 4 2015 January-March  California  1440000    1690000      255000
#> 5 5 2015 January-March    Colorado     3500      12500        1500
#> 6 6 2015 January-March Connecticut     3900       3900         870
#>   colony_lost_pct colony_added colony_reno colony_reno_pct
#> 1              26         2800         250               4
#> 2              13         3400        2100               6
#> 3              11         1200          90               1
#> 4              15       250000      124000               7
#> 5              12          200         140               1
#> 6              22          290          NA              NA
```

``` r
head(tidytuesday2026Jan)
#>     language      family native_speakers     country
#> 1 ǂKxʼaoǁʼae        Kxʼa            5000     Namibia
#> 2 ǂKxʼaoǁʼae        Kxʼa            5000    Botswana
#> 3       Abon Niger–Congo             800    Cameroon
#> 4      Abron Niger–Congo         1393000       Ghana
#> 5      Abron Niger–Congo         1393000 Ivory Coast
#> 6    Acheron Niger–Congo           20000       Sudan

invisible(roam_install(tidytuesday2026Jan, version = "2026-01-13"))
#> Data retrieved
head(tidytuesday2026Jan)
#>     language      family native_speakers     country
#> 1 ǂKxʼaoǁʼae        Kxʼa            5000     Namibia
#> 2 ǂKxʼaoǁʼae        Kxʼa            5000    Botswana
#> 3       Abon Niger–Congo             800    Cameroon
#> 4      Abron Niger–Congo         1393000       Ghana
#> 5      Abron Niger–Congo         1393000 Ivory Coast
#> 6    Acheron Niger–Congo           20000       Sudan
```
