R scripts and plots
================
Edem Dosseh
November 6, 2018

Read in the files
-----------------

``` r
library(readxl)
woodyplants <- read_xlsx("Combined Woody Plants Data (2002,2006,2011,2016).xlsx")
groundcover <- read.csv("Combined Groundcover2011_2016.csv", stringsAsFactors = FALSE)

head(woodyplants)
```

    ## # A tibble: 6 x 8
    ##    Year `Transect Numbe~ `Plot Number` `N/S` Genus `Specific epith~
    ##   <dbl>            <dbl>         <dbl> <chr> <chr> <chr>           
    ## 1  1937                3             4 N     Frax~ sp.             
    ## 2  1937               11             4 N     Tsuga canadensis      
    ## 3  1937               13             1 N     Corn~ sp.             
    ## 4  1937               17            14 S     Corn~ sp.             
    ## 5  1937               19             3 S     Corn~ sp.             
    ## 6  1937                3             2 S     Corn~ sp.             
    ## # ... with 2 more variables: `DBH (cm)` <dbl>, BA <dbl>

``` r
tail(woodyplants)
```

    ## # A tibble: 6 x 8
    ##    Year `Transect Numbe~ `Plot Number` `N/S` Genus `Specific epith~
    ##   <dbl>            <dbl>         <dbl> <chr> <chr> <chr>           
    ## 1  2016               27             6 S     Frax~ americana       
    ## 2  2016               27             6 N     Dead  <NA>            
    ## 3  2016               27             6 N     Dead  <NA>            
    ## 4  2016               27             6 N     Frax~ americana       
    ## 5  2016               27             6 N     Frax~ americana       
    ## 6  2016               27             6 N     Frax~ americana       
    ## # ... with 2 more variables: `DBH (cm)` <dbl>, BA <dbl>

``` r
str(woodyplants)
```

    ## Classes 'tbl_df', 'tbl' and 'data.frame':    19595 obs. of  8 variables:
    ##  $ Year            : num  1937 1937 1937 1937 1937 ...
    ##  $ Transect Number : num  3 11 13 17 19 3 3 5 5 5 ...
    ##  $ Plot Number     : num  4 4 1 14 3 2 2 13 16 7 ...
    ##  $ N/S             : chr  "N" "N" "N" "S" ...
    ##  $ Genus           : chr  "Fraxinus" "Tsuga" "Cornus" "Cornus" ...
    ##  $ Specific epithet: chr  "sp." "canadensis" "sp." "sp." ...
    ##  $ DBH (cm)        : num  2.54 2.54 2.54 2.54 2.54 5.08 5.08 5.08 5.08 5.08 ...
    ##  $ BA              : num  0.000507 0.000507 0.000507 0.000507 0.000507 ...

``` r
summary(woodyplants)
```

    ##       Year      Transect Number  Plot Number        N/S           
    ##  Min.   :1937   Min.   : 1.00   Min.   :  1.0   Length:19595      
    ##  1st Qu.:2006   1st Qu.: 9.00   1st Qu.:  7.0   Class :character  
    ##  Median :2011   Median :13.00   Median : 14.0   Mode  :character  
    ##  Mean   :2009   Mean   :13.19   Mean   : 39.8                     
    ##  3rd Qu.:2016   3rd Qu.:17.00   3rd Qu.: 32.0                     
    ##  Max.   :2016   Max.   :27.00   Max.   :247.0                     
    ##                 NA's   :89      NA's   :89                        
    ##     Genus           Specific epithet      DBH (cm)             BA         
    ##  Length:19595       Length:19595       Min.   :  1.000   Min.   :0.00000  
    ##  Class :character   Class :character   1st Qu.:  1.427   1st Qu.:0.00016  
    ##  Mode  :character   Mode  :character   Median :  2.400   Median :0.00045  
    ##                                        Mean   :  7.780   Mean   :0.01946  
    ##                                        3rd Qu.:  6.400   3rd Qu.:0.00322  
    ##                                        Max.   :140.600   Max.   :1.55260  
    ##                                        NA's   :91        NA's   :90

``` r
head(groundcover)
```

    ##   Sample.Date Transect.Number Plot.Number Plot.Corner               Genus
    ## 1   6/20/2011               1           1          NE Coarse Woody Debris
    ## 2   6/20/2011               1           1          NW Coarse Woody Debris
    ## 3   6/20/2011               1           1          SE Coarse Woody Debris
    ## 4   6/20/2011               1           1          SW Coarse Woody Debris
    ## 5   6/20/2011               1           2          NE Coarse Woody Debris
    ## 6   6/20/2011               1           2          NW Coarse Woody Debris
    ##   Specific.epithet X0.1 X1.2 X2.3 X3.4 X4.5
    ## 1                     0    8    0    0   10
    ## 2                   100  100  100   70   40
    ## 3                    50    5    0   20    0
    ## 4                     0    0    0    8    0
    ## 5                     0    0   10    0    0
    ## 6                     0    0    0    8    0

``` r
tail(groundcover)
```

    ##       Sample.Date Transect.Number Plot.Number Plot.Corner       Genus
    ## 12355   7/28/2011              15          27          NW    Viburnum
    ## 12356   7/28/2011              15          27          SE       Fagus
    ## 12357   7/28/2011              15          27          SE Maianthemum
    ## 12358   7/28/2011              15          27          SW      Aralia
    ## 12359   7/28/2011              15          27          SW Maianthemum
    ## 12360   7/28/2011              15          27          SW     Quercus
    ##       Specific.epithet X0.1 X1.2 X2.3 X3.4 X4.5
    ## 12355         dentatum    0    0    0 10.0    0
    ## 12356      grandifolia    0    1    0  0.0   24
    ## 12357        canadense    0    0   10  0.0    2
    ## 12358            elata    7   41   13  0.0    0
    ## 12359        canadense    0    0    0  1.0    0
    ## 12360            rubra    0    0    0  0.0    2

``` r
str(groundcover)
```

    ## 'data.frame':    12360 obs. of  11 variables:
    ##  $ Sample.Date     : chr  "6/20/2011" "6/20/2011" "6/20/2011" "6/20/2011" ...
    ##  $ Transect.Number : num  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ Plot.Number     : num  1 1 1 1 2 2 2 2 3 3 ...
    ##  $ Plot.Corner     : chr  "NE" "NW" "SE" "SW" ...
    ##  $ Genus           : chr  "Coarse Woody Debris" "Coarse Woody Debris" "Coarse Woody Debris" "Coarse Woody Debris" ...
    ##  $ Specific.epithet: chr  "" "" "" "" ...
    ##  $ X0.1            : num  0 100 50 0 0 0 0 8 0 0 ...
    ##  $ X1.2            : num  8 100 5 0 0 0 0 0 8 0 ...
    ##  $ X2.3            : num  0 100 0 0 10 0 0 20 0 5 ...
    ##  $ X3.4            : chr  "0" "70" "20" "8" ...
    ##  $ X4.5            : num  10 40 0 0 0 0 0 0 0 0 ...

``` r
summary(groundcover)
```

    ##  Sample.Date        Transect.Number  Plot.Number    Plot.Corner       
    ##  Length:12360       Min.   : 1.00   Min.   : 1.00   Length:12360      
    ##  Class :character   1st Qu.: 9.00   1st Qu.: 4.00   Class :character  
    ##  Mode  :character   Median :13.00   Median : 9.00   Mode  :character  
    ##                     Mean   :13.17   Mean   :10.46                     
    ##                     3rd Qu.:17.00   3rd Qu.:15.00                     
    ##                     Max.   :27.00   Max.   :30.00                     
    ##                                                                       
    ##     Genus           Specific.epithet        X0.1            X1.2        
    ##  Length:12360       Length:12360       Min.   :  0.0   Min.   :   0.00  
    ##  Class :character   Class :character   1st Qu.:  0.0   1st Qu.:   0.00  
    ##  Mode  :character   Mode  :character   Median :  1.0   Median :   2.00  
    ##                                        Mean   : 22.2   Mean   :  22.78  
    ##                                        3rd Qu.: 30.0   3rd Qu.:  30.00  
    ##                                        Max.   :555.0   Max.   :1000.00  
    ##                                        NA's   :2       NA's   :2        
    ##       X2.3            X3.4                X4.5       
    ##  Min.   :  0.00   Length:12360       Min.   :  0.00  
    ##  1st Qu.:  0.00   Class :character   1st Qu.:  0.00  
    ##  Median :  2.00   Mode  :character   Median :  2.00  
    ##  Mean   : 22.68                      Mean   : 22.39  
    ##  3rd Qu.: 30.00                      3rd Qu.: 30.00  
    ##  Max.   :400.00                      Max.   :640.00  
    ##  NA's   :4                           NA's   :9

``` r
##forestmgmt <- read_xls("NYBG Forest Management_11052008 to 12312014.xls")
```

Removing rows that have missing values in all columns except for first year (Year column)
-----------------------------------------------------------------------------------------

``` r
## First We are checking if there are any missing year column which is the first column on the datasets
sum(is.na(woodyplants$Year))
```

    ## [1] 0

``` r
sum(is.na(groundcover$Sample.Date))
```

    ## [1] 0

``` r
## Removing the empty rows
woodyplants <- woodyplants[rowSums(is.na(woodyplants)) < 7,]
groundcover <- groundcover[rowSums(is.na(groundcover)) < 10,]
```

Massaging the data
------------------

``` r
woodyplants$`Transect Number` <- as.factor(woodyplants$`Transect Number`)
woodyplants$`Plot Number` <- as.factor(woodyplants$`Plot Number`)

groundcover$Transect.Number <- as.factor(groundcover$Transect.Number)
groundcover$Plot.Number <- as.factor(groundcover$Plot.Number)
groundcover$Sample.Date <- as.Date(groundcover$Sample.Date, format = "%m/%d/%Y")

#Set all the values in Genus to uppercases
woodyplants$Genus <- toupper(woodyplants$Genus)

library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
#Get top 7 Genus
top_7 <- woodyplants %>% count(Genus) %>% arrange(desc(n)) %>% filter(n > 1000)

#Create a vector with top 7 Genus
target <- c("PRUNUS","DEAD","LINDERA","ACER","ARALIA","FAGUS","VIBURNUM")

#Get top 7 Genus with Year
top_7_year <- woodyplants %>% count(Year,Genus) %>% arrange(desc(n)) %>% filter(Genus %in% target )

#Create plots
```

Including Plots
---------------

``` r
library(ggplot2)

ggplot(top_7_year, aes(x = Genus, y = n, fill = factor(Year)), position ="dodge") + geom_bar(stat = "identity")
```

![](Scripts_and_Plots_files/figure-markdown_github/unnamed-chunk-4-1.png)

``` r
ggplot(top_7_year, aes(x = Genus, y = n, fill = factor(Year)), position ="dodge") + geom_bar(stat = "identity", position = "dodge")
```

![](Scripts_and_Plots_files/figure-markdown_github/unnamed-chunk-4-2.png)
