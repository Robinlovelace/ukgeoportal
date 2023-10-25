
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

Instead it uses ad-hoc functions that make use of `{httr2}` to make the
API calls.

The aim is to be as minimal and easy-to-maintain as possible.

The history of attempts to gain programmatic access to the Geoportal
suggests that ease-of-updates and minimalism are key to success.

## Installation

``` r
remotes::install_github("robinlovelace/ukgeoportal")
```
