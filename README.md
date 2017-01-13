
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

`RuralUrbanCodes` includes Rural-Urban Continuum Codes from USDA.

Installation
------------

``` r
# install.package("devtools")
devtools::install_github("jjchern/RuralUrbanCodes")
```

Data
----

``` r
library(tidyverse)
RuralUrbanCodes::rucc2003
#> # A tibble: 3,142 × 8
#>     fips state          county rucc_1993 rucc_2003 pop_2000
#>    <chr> <chr>           <chr>     <dbl>     <dbl>    <dbl>
#> 1  01001    AL  Autauga County         2         2    43671
#> 2  01003    AL  Baldwin County         2         4   140415
#> 3  01005    AL  Barbour County         6         6    29038
#> 4  01007    AL     Bibb County         6         1    20826
#> 5  01009    AL   Blount County         2         1    51024
#> 6  01011    AL  Bullock County         6         6    11714
#> 7  01013    AL   Butler County         7         6    21399
#> 8  01015    AL  Calhoun County         3         3   112249
#> 9  01017    AL Chambers County         5         6    36583
#> 10 01019    AL Cherokee County         6         8    23988
#> # ... with 3,132 more rows, and 2 more variables: pct_metro_workers <dbl>,
#> #   rucc_2003_desc <chr>

# Rural-Urban Continuum Codes 2003
RuralUrbanCodes::rucc2003 %>% 
    group_by(rucc_2003_desc) %>% 
    summarise(rucc_2003 = mean(rucc_2003)) %>% 
    arrange(rucc_2003) %>% 
    knitr::kable()
```

| rucc\_2003\_desc                                                                             |  rucc\_2003|
|:---------------------------------------------------------------------------------------------|-----------:|
| County in metro area with 1 million population or more                                       |           1|
| County in metro area of 250,000 to 1 million population                                      |           2|
| County in metro area of fewer than 250,000 population                                        |           3|
| Nonmetro county with urban population of 20,000 or more, adjacent to a metro area            |           4|
| Nonmetro county with urban population of 20,000 or more, not adjacent to a metro area        |           5|
| Nonmetro county with urban population of 2,500-19,999, adjacent to a metro area              |           6|
| Nonmetro county with urban population of 2,500-19,999, not adjacent to a metro area          |           7|
| Nonmetro county completely rural or less than 2,500 urban population, adj. to metro area     |           8|
| Nonmetro county completely rural or less than 2,500 urban population, not adj. to metro area |           9|
