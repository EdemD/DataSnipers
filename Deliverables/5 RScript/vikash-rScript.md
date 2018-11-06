R-Script
================

-   [New York Botanical Garden Analysis](#new-york-botanical-garden-analysis)
    -   [1. Trend in number of native, non-native and invasive species over the years](#trend-in-number-of-native-non-native-and-invasive-species-over-the-years)
        -   [1.1. Reshaping the source table](#reshaping-the-source-table)
        -   [1.2. Plotting the number of species types by survey years](#plotting-the-number-of-species-types-by-survey-years)
    -   [1.3. Percentage change in species types over years](#percentage-change-in-species-types-over-years)
    -   [2. Restoration Efforts over the years (2007-2018)](#restoration-efforts-over-the-years-2007-2018)
-   [End](#end)

New York Botanical Garden Analysis
==================================

1. Trend in number of native, non-native and invasive species over the years
----------------------------------------------------------------------------

The source files used for this analysis are already cleaned, the documentation for which can be found in [here](Deliverables/4%20Data%20Cleaning/Data%20Cleaning.md)

File Used - Comprehensive Species Tally (1937-2016)

\*\* Reading the source file\*\*

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

**Quick summary of the dataset**

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

### 1.1. Reshaping the source table

To analyze the variation of native, non-native and invasive species by years, we need to create a simplified dataframe, that gives us the count by years

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

### 1.2. Plotting the number of species types by survey years

To plot the number of species types, We will first reshape the dataframe into the 'long' format and then plot it using ggplot. Reshape2 package has cast and melt functions that can be used to change a dataframe between wide and long format.

``` r
#Reshaping the dataframe
<<<<<<< HEAD
library(reshape2)
=======
>>>>>>> 0f890b875acdada7056242f071375b96c8877e75
cst_trendL <- melt(cst_trend, id.vars = c("year"))
colnames(cst_trendL)[2] <- "type"
colnames(cst_trendL)[3] <- "count"

#Plotting the dataset
line <- ggplot(cst_trendL, aes(x = year, y = count, color = type)) + geom_line(size=1) + geom_point(size=2)+ ggtitle("Species Count from 1937 to 2016") + labs(x="Years", y="Species Count")
line <- line + theme_bw()
line
```

![](vikash-rScript_files/figure-markdown_github/cst_plot-1.png)

The number of species types have increased a lot from the earliest survey data available. The increase in the species types is valid for all the species types.

``` r
line <- ggplot(cst_trendL[cst_trendL$year >= "2002-01-01",], aes(x = year, y = count, color = type)) + geom_line(size=1) + geom_point(size=2) + ggtitle("Species Count from 2002 to 2016") + labs(x="Years", y="Species Count")
line <- line + theme_bw()
line
```

![](vikash-rScript_files/figure-markdown_github/cst_plot_2002-1.png)

From the period 2002 to 2016, there is a tremendous growth in the total number of species in all the three types - native, non-native and invasive. Although, the number of species has been increasing for all these three types, the growth in invasive species seems to be declining after 2012. We can get a better picture by analyzing the percentage species by every year.

1.3. Percentage change in species types over years
--------------------------------------------------

To plot the percentage change, we have used a Pie chart for every year the survey was held (except for 1937).

``` r
par(mar=c(0, 0, 2, 0), oma=c(0,0,2,0), mfrow=c(2,2))
#Creating the pie for the year 2002
count_2002 <- cst_trendL[cst_trendL$year == "2002-01-01",-c(1)]
slices <- count_2002$count

labels <-  count_2002$type
percent <- round(slices/sum(slices)*100, digits = 2)
labels <- paste(labels, percent)
labels <- paste(labels, "%", sep="")

pie(slices, labels, main="Percentage of species type in 2002", col=brewer.pal(length(labels),"Pastel1"))

#Creating pie for 2006
count_2006 <- cst_trendL[cst_trendL$year == "2006-01-01",-c(1)]
slices <- count_2006$count

labels <-  count_2006$type
percent <- round(slices/sum(slices)*100, digits = 2)
labels <- paste(labels, percent)
labels <- paste(labels, "%", sep="")

pie(slices, labels, main="Percentage of species type in 2006", col=brewer.pal(length(labels),"Pastel1"))

#Creating pie for 2011
count_2011 <- cst_trendL[cst_trendL$year == "2011-01-01",-c(1)]
slices <- count_2011$count

labels <-  count_2011$type
percent <- round(slices/sum(slices)*100, digits = 2)
labels <- paste(labels, percent)
labels <- paste(labels, "%", sep="")

pie(slices, labels, main="Percentage of species type in 2011", col=brewer.pal(length(labels),"Pastel1"))

#Creating pie for 2016
count_2016 <- cst_trendL[cst_trendL$year == "2016-01-01",-c(1)]
slices <- count_2016$count

labels <-  count_2016$type
percent <- round(slices/sum(slices)*100, digits = 2)
labels <- paste(labels, percent)
labels <- paste(labels, "%", sep="")

pie(slices, labels, main="Percentage of species type in 2016", col=brewer.pal(length(labels),"Pastel1"))
```

![](vikash-rScript_files/figure-markdown_github/pie_charts_cst-1.png)

From the pies, we can see that the percentage of species types that were native has almost been constant over the period of 14 years. From 64.29% in 2002, it decreased till 48% in 2011, and then increased again to 60.69%. There is a minor increase in the %age of non-native species types and is at its highest (26.9%) in 2016. The %age of invasive species types although increased from 14.29% to 20% in 2011, decreased to its lowest (12.41%) in 2016.

If we combine our findings to the trend in species count that we found earlier, we can infer that even though the number of species have increased over the past years, the invasive species types have been controlled more effectively after 2011.

2. Restoration Efforts over the years (2007-2018)
-------------------------------------------------

Towards the management goals, there are active restoration projects that have been going on since 2007.

By analysing the source file 'NYBG Forest Restoration Planting we can analyze the restoration efforts during the survey period.

``` r
restoration <- read.csv("src/NYBG Forest Restoration Plantings 2007-2018.csv", stringsAsFactors = FALSE)
restoration <- restoration[,-c(1,5,6,7,9)]

attach(restoration)

# Modifying the Data Types
restoration$Date.Planted <- as.Date(Date.Planted, "%m/%d/%Y")
restoration$Plant.Type <- as.factor(Plant.Type)

head(restoration)
```

    ##   Qty                Taxon Plant.Type Date.Planted
    ## 1   4      Quercus bicolor       Tree   2007-05-01
    ## 2   5 Hamamelis virginiana      Shrub   2007-11-11
    ## 3   4 Hamamelis virginiana      Shrub   2007-11-11
    ## 4  12    Viburnum dentatum      Shrub   2007-11-11
    ## 5  12    Viburnum dentatum      Shrub   2007-11-11
    ## 6  12 Viburnum prunifolium      Shrub   2007-11-11

A quick summary of the dataframe provides us with important information about the data under analysis

``` r
summary(restoration)
```

    ##       Qty             Taxon           Plant.Type   Date.Planted       
    ##  Min.   :   1.00   Length:1153        Herb :541   Min.   :2007-05-01  
    ##  1st Qu.:   7.00   Class :character   Shrub:176   1st Qu.:2011-06-08  
    ##  Median :  17.00   Mode  :character   Tree :436   Median :2012-10-26  
    ##  Mean   :  33.18                                  Mean   :2013-10-07  
    ##  3rd Qu.:  40.00                                  3rd Qu.:2016-06-16  
    ##  Max.   :1000.00                                  Max.   :2018-06-22

This provides us with some imporant information on the data. There are 3 plant types, that have been planted as a part of restoration processes - \* Herb \* Shrubs \* Tree

``` r
#Total plants planted
sum(Qty)
```

    ## [1] 38258

``` r
#Total plants planted by Type
res_qty_type <- restoration %>%
  group_by(Plant.Type) %>%
  summarise(Qty = sum(Qty))
res_qty_type
```

    ## # A tibble: 3 x 2
    ##   Plant.Type   Qty
    ##   <fct>      <int>
    ## 1 Herb       21974
    ## 2 Shrub       2701
    ## 3 Tree       13583

``` r
# Pie Chart for the plants planted by Type
slices <- res_qty_type$Qty
labels <-  res_qty_type$Plant.Type
percent <- round(slices/sum(slices)*100, digits = 2)
labels <- paste(labels, percent)
labels <- paste(labels, "%", sep="")

pie(slices, labels, main="Plant types planted", col=brewer.pal(length(labels),"Pastel1"))
```

![](vikash-rScript_files/figure-markdown_github/plant_type-1.png)

If we analyze these plant types and the quantities planted over the years

``` r
#Adding a column for the year
restoration <- restoration %>%
  mutate(year_planted = year(restoration$Date.Planted))
```

    ## Warning: package 'bindrcpp' was built under R version 3.4.4

``` r
#Adding a column for the month
restoration <- restoration %>%
  mutate(month_planted = month(restoration$Date.Planted))

#Summarising number of plants planted by years
res_qty_year <- restoration %>%
  group_by(year_planted) %>%
  summarise(Qty = sum(Qty))

plot_qty_year <- ggplot(res_qty_year, aes(x=res_qty_year$year_planted, y=res_qty_year$Qty)) + geom_bar(stat = "identity") + 
  geom_text(y=res_qty_year$Qty+300 , label = res_qty_year$Qty) + 
  ggtitle("Restoration Planting by Years") + labs(x="Years", y="Plants planted") +
  theme_bw()
plot_qty_year
```

![](vikash-rScript_files/figure-markdown_github/quantities%20planted%20by%20year%20and%20month-1.png)

``` r
#Plantation by month and year
res_month <- restoration %>%
  group_by(year_planted, month_planted) %>%
  summarise(Qty = sum(Qty))

#Adding a dummy month column for X Label
res_month <- res_month %>%
  mutate(month2_planted = as.Date(paste0("2000-", month_planted, "-01"), "%Y-%m-%d"))

#Plotting the new dataset
res_month %>%
  ggplot(aes(x=month2_planted, y=Qty)) +
    geom_bar(stat = "identity", fill = "darkorchid4") +
  facet_wrap(~year_planted, ncol = 3) +
    labs(title="Plantations by Months/Year", x="Month", y="Quantity planted")+
  theme_bw() + scale_x_date(date_labels = "%b")
```

![](vikash-rScript_files/figure-markdown_github/qty_by_monthYear-1.png)

``` r
detach(restoration)
```

End
===
