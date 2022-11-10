
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hexfetch

<!-- badges: start -->
<!-- badges: end -->

The goal of hexfetch is to extract hex logos from packages.

## Installation

You can install the development version of hexfetch from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("EmilHvitfeldt/hexfetch")
```

## Example

``` r
library(hexfetch)

my_dir <- tempdir()
hexfetch(tidyverse::tidyverse_packages(), my_dir)
#> Unable to find hex files for the following packages:
#> cli, crayon, dbplyr, googledrive, httr, jsonlite, pillar, xml2, and tidyverse
fs::dir_info(my_dir)
#> # A tibble: 23 × 18
#>    path           type    size permiss…¹ modification_time   user  group devic…²
#>    <fs::path>     <fct> <fs::> <fs::per> <dttm>              <chr> <chr>   <dbl>
#>  1 …ksN/broom.png file  190.7K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  2 …ksN/dplyr.png file   44.3K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  3 …sN/dtplyr.png file   47.4K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  4 …N/forcats.png file   44.8K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  5 …N/ggplot2.png file   37.6K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  6 …lesheets4.png file   33.9K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  7 …ksN/haven.png file   19.2K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  8 …OuksN/hms.png file   21.5K rw-r--r-- 2022-11-10 14:28:28 emil… staff  1.68e7
#>  9 …62f195ee1.rds file   23.7K rw-r--r-- 2022-11-10 14:28:27 emil… staff  1.68e7
#> 10 …65de81492.rds file   37.1K rw-r--r-- 2022-11-10 14:28:27 emil… staff  1.68e7
#> # … with 13 more rows, 10 more variables: hard_links <dbl>,
#> #   special_device_id <dbl>, inode <dbl>, block_size <dbl>, blocks <dbl>,
#> #   flags <int>, generation <dbl>, access_time <dttm>, change_time <dttm>,
#> #   birth_time <dttm>, and abbreviated variable names ¹​permissions, ²​device_id
```
