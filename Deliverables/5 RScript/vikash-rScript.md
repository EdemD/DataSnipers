R-Script
================

Reading Source Files
--------------------

The source files used are the cleaned files, the documentation for which can be found in [here](Deliverables/4%20Data%20Cleaning/Data%20Cleaning.md) \* Comprehensive Species Tally (1937-2016) \* NYBG Restoration Planting (2007-2018)

**Comprehensive Species Tally (1937-2016)**

``` r
cst <- read.csv("Comprehensive Species Tally 1937-2016.csv")
cst <- cst[,-c(2,3,4)]
head(cst)
```

    ##   Survey.Year               Taxon Appear.in.Woody.Survey
    ## 1        2016        Acer negundo                      n
    ## 2        2016    Acer platanoides                      y
    ## 3        2016 Acer pseudoplatanus                      y
    ## 4        2016         Acer rubrum                      y
    ## 5        2016    Acer saccharinum                      n
    ## 6        2016      Acer saccharum                      y
    ##   Appear.in.Herb.Transects Appear.as.Additional.Species Native Non.native
    ## 1                        n                            y      y          n
    ## 2                        y                            y      n          y
    ## 3                        y                            y      n          y
    ## 4                        y                            y      y          n
    ## 5                        y                            n      y          n
    ## 6                        y                            y      y          n
    ##   Invasive
    ## 1        n
    ## 2        y
    ## 3        y
    ## 4        n
    ## 5        n
    ## 6        n

**NYBG Restoration Planting (2007-2018)**

``` r
restoration <- read.csv("NYBG Forest Restoration Plantings 2007-2018.csv")
restoration <- restoration[,-c(1,6,7,9)]
head(restoration)
```

    ##   Qty                Taxon Plant.Type Height..inches. Date.Planted
    ## 1   4      Quercus bicolor       Tree            >=24     5/1/2007
    ## 2   5 Hamamelis virginiana      Shrub            >=24   11/11/2007
    ## 3   4 Hamamelis virginiana      Shrub            >=24   11/11/2007
    ## 4  12    Viburnum dentatum      Shrub            >=24   11/11/2007
    ## 5  12    Viburnum dentatum      Shrub            >=24   11/11/2007
    ## 6  12 Viburnum prunifolium      Shrub            >=24   11/11/2007

Comprehensive Species Tally
---------------------------

Including Plots
---------------

You can also embed plots, for example:

![](vikash-rScript_files/figure-markdown_github/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
