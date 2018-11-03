R-Script
================

Reading Source Files
--------------------

The source files used are the cleaned files, the documentation for which can be found in [here](Deliverables/4%20Data%20Cleaning/Data%20Cleaning.md)

-   Comprehensive Species Tally (1937-2016)
-   NYBG Restoration Planting (2007-2018)

**Comprehensive Species Tally (1937-2016)**

``` r
cst <- read.csv("src/Comprehensive Species Tally 1937-2016.csv", na.strings = "na")
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
restoration <- read.csv("src/NYBG Forest Restoration Plantings 2007-2018.csv")
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

Quick summary of the dataset

``` r
cst$Survey.Year <- factor(cst$Survey.Year)
summary(cst)
```

    ##  Survey.Year                     Taxon     Appear.in.Woody.Survey
    ##  1937: 18    Carpinus caroliniana   :  5   n:265                 
    ##  2002: 37    Fagus grandifolia      :  5   y:246                 
    ##  2006: 49    Liriodendron tulipifera:  5                         
    ##  2011:131    Ostrya virginiana      :  5                         
    ##  2016:276    Phellodendron amurense :  5                         
    ##              Prunus spp.            :  5                         
    ##              (Other)                :481                         
    ##  Appear.in.Herb.Transects Appear.as.Additional.Species Native  Non.native
    ##  n   :141                 n   :104                     n:189   n:359     
    ##  y   :266                 y   :303                     y:322   y:152     
    ##  NA's:104                 NA's:104                                       
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##                                                                          
    ##  Invasive
    ##  n:427   
    ##  y: 84   
    ##          
    ##          
    ##          
    ##          
    ## 

To analyze the variation of native, non-native and invasive species by years, we need to create a simplified dataframe.

``` r
#Create sub-tables
cst_1937 <- subset(cst, cst$Survey.Year==1937)
cst_2002 <- subset(cst, cst$Survey.Year==2002)
cst_2006 <- subset(cst, cst$Survey.Year==2006)
cst_2011 <- subset(cst, cst$Survey.Year==2011)
cst_2016 <- subset(cst, cst$Survey.Year==2016)

# Create vectors for all the years and species -> native, not-native and invasive
year <- c('1937-01-01', '2002-01-01', '2006-01-01', '2011-01-01', '2016-01-01')
year <- as.Date(year)
native <- c(length(which(cst_1937$Native=='y')), length(which(cst_2002$Native=='y')), length(which(cst_2006$Native=='y')), length(which(cst_2011$Native=='y')), length(which(cst_2016$Native=='y')))
non_native <- c(length(which(cst_1937$Non.native=='y')), length(which(cst_2002$Non.native=='y')), length(which(cst_2006$Non.native=='y')), length(which(cst_2011$Non.native=='y')), length(which(cst_2016$Non.native=='y')))
invasive <- c(length(which(cst_1937$Invasive=='y')), length(which(cst_2002$Invasive=='y')), length(which(cst_2006$Invasive=='y')), length(which(cst_2011$Invasive=='y')), length(which(cst_2016$Invasive=='y')))

#Create dataframe with the vectors
cst_trend <- data.frame(year, native, non_native, invasive, stringsAsFactors = FALSE)
head(cst_trend)
```

    ##         year native non_native invasive
    ## 1 1937-01-01     15          2        2
    ## 2 2002-01-01     27          9        6
    ## 3 2006-01-01     32         15       10
    ## 4 2011-01-01     72         48       30
    ## 5 2016-01-01    176         78       36

### Plotting the number of species by survey years

We will first reshape the dataframe to suit our needs and then plot it using ggplot. Reshape2 package has cast and melt functions that can be used to change a the dataframe between wide and long format.

``` r
#Reshaping the dataframe
library(reshape2)
```

    ## Warning: package 'reshape2' was built under R version 3.4.4

``` r
cst_trendL <- melt(cst_trend, id.vars = c("year"))
colnames(cst_trendL)[2] <- "type"
colnames(cst_trendL)[3] <- "count"

#Plotting the dataset
library(ggplot2)
ggplot(cst_trendL, aes(x = year, y = count, color = type)) + geom_line(size=1)
```

![](vikash-rScript_files/figure-markdown_github/cst_plot-1.png)

NYBG has been actively working since 2002, and the results for the same is evident from the plot above. If we analyze this trend from 2002 to 2016, we would get a more detailed picture

``` r
ggplot(cst_trendL[cst_trendL$year >= "2002-01-01",], aes(x = year, y = count, color = type)) + geom_line(size=1)
```

![](vikash-rScript_files/figure-markdown_github/cst_plot_2002-1.png) \# End
