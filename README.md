
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ukgeoportal

<!-- badges: start -->
<!-- badges: end -->

The goal of ukgeoportal is to provide easy access to the UK’s
[Geoportal](https://geoportal.statistics.gov.uk/).

Because ESRI [doesn’t publish OpenAPI compliant .yml
files](https://github.com/Esri/geoportal-server/issues/297) describing
their APIs, this package doesn’t use the wonderful
[`{beekeeper}`](https://beekeeper.api2r.org/) package to generate the
API wrappers.

Instead it uses `sf` to make the API calls.

The aim is to be as minimal and easy-to-maintain as possible.

The history of attempts to gain programmatic access to the Geoportal
suggests that ease-of-updates and minimalism are key to success.

## Installation

``` r
remotes::install_github("robinlovelace/ukgeoportal")
```

## Example

``` r
library(ukgeoportal)
ukgeo("Combined_Authorities")
#> Simple feature collection with 10 features and 10 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -3.204075 ymin: 51.2731 xmax: 0.514484 ymax: 55.81121
#> Geodetic CRS:  WGS 84
#> # A tibble: 10 × 11
#>      FID CAUTH22CD CAUTH22NM  BNG_E  BNG_N LONG  LAT   Shape__Area Shape__Length
#>    <int> <chr>     <chr>      <int>  <int> <chr> <chr>       <dbl>         <dbl>
#>  1     1 E47000001 Greater … 377940 401102 -2.3… 53.5… 1273598615.       206058.
#>  2     2 E47000002 South Yo… 441052 398663 -1.3… 53.4… 1550442683.       213422.
#>  3     3 E47000003 West Yor… 418686 427238 -1.7… 53.7… 2029160702.       240287.
#>  4     4 E47000004 Liverpoo… 344342 390164 -2.8… 53.4…  728077455.       260917.
#>  5     5 E47000006 Tees Val… 436953 521739 -1.4… 54.5…  804156179.       225786.
#>  6     6 E47000007 West Mid… 402507 289715 -1.9… 52.5…  902348355.       206335.
#>  7     7 E47000008 Cambridg… 536856 271834 0.00… 52.3… 3397592667.       369777.
#>  8     8 E47000009 West of … 366423 173496 -2.4… 51.4…  959384341.       176527.
#>  9     9 E47000010 North Ea… 413490 537463 -1.7… 54.7… 2576825914.       277943.
#> 10    10 E47000011 North of… 397235 600991 -2.0… 55.3… 5228242687.       457635.
#> # ℹ 2 more variables: GlobalID <chr>, geometry <MULTIPOLYGON [°]>
```
