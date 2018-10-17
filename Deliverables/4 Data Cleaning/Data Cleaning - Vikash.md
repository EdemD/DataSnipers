# Data Cleaning Report

## 1. Comprehensive Species Tally

### Files List

* 1937 Comprehensive Species Tally_09252017.xlsx
* 2002 Comprehensive Species Tally_09252017.xlsx
* 2006 Comprehensive Species Tally_09252017.xlsx
* 2011 Comprehensive Species Tally_09252017.xlsx
* 2016 Comprehensive Species Tally_09252017.xlsx

### Description of Data Source

**Sheet Used for Analysis -** COMBINED

**Number of Rows (sum of all sheets) -** 511

**Total Number of Columns (maximum) -** 9

**Source -** The data was provided by NYBG representative

**Summary of Description** - Comprehensive Species Tally provides the results from the surveys that were conducted in each of the years - 1937, 2002, 2006, 2011 and 2016. It classifies the species found during these surveys into 3 categories -

* Native
* Non-native
* Invasive

There were three types of surveys based on type of the species -

* Woody survey
* Herb Transects survey
* Additional Species survey

**Sample**

| Genus | Species        | Family      | Appear in Woody   Survey | Appear in Herb   Transects | Appear as   Additional Species | Native | Non-native | Invasive |
| ----- | -------------- | ----------- | ------------------------ | -------------------------- | ------------------------------ | ------ | ---------- | -------- |
| Acer  | negundo        | Sapindaceae |                          |                            | y                              | y      |            |          |
| Acer  | platanoides    | Sapindaceae | y                        | y                          | y                              |        | y          | y        |
| Acer  | pseudoplatanus | Sapindaceae | y                        | y                          | y                              |        | y          | y        |
| Acer  | rubrum         | Sapindaceae | y                        | y                          | y                              | y      |            |          |
| Acer  | saccharinum    | Sapindaceae |                          | y                          |                                | y      |            |          |

### Licensing

We did not find any license or usage terms with the data

### Metadata

**Genus -** A principal taxonomic category that ranks above species and below family, and is denoted by a capitalized Latin name (dictionary.com)

**Species -** A group of living organisms consisting of similar individuals capable of exchanging genes or interbreeding. The species is the principal natural taxonomic unit, ranking below a genus and denoted by a Latin binomial (dictionary.com)

**Family -** A principal taxonomic category that ranks above genus and below order, usually ending in *-idae* (in zoology) or *-aceae* (in botany) (dictionary.com)

**Taxonomy Rank -** Species < Genus < Family < Order < Class < Phylum < Kingdom < Domain

### Issues with the data

* The Comprehensive Species Tally is divided into separate files for separate years
* Some attributes (column names) are missing from some reports
* The columns use **'y'** to represent 'presence' and use **blanks** to represent absence

### Remediation Rationale

* Getting all the yearly data into one sheet would help us analyze the range of values giving us better understanding to devise our cleaning
* Add a new column **Year** to represent
* The attributes that are missing can be represented by a blank value
* The **blank** values that were used to represent '**absence**' of a species can be changed to '**n**' so that -
  * It does not affect our new blank values which represent the absence of data.
  * It adds more meaning to the survey with '**y**' meaning *'found'* and '**n**' meaning *'not found'*.

### Steps to Clean

1. In the sheet **COMBINED** for all the files, replaced all the blanks with **n** 
2. Added column **Appear in Herb Transects** and **Appear as Additional Species** to the sheet COMBINED in the survey report for 1937, 2002 and 2006, to match the column structure of the year 2011 and 2016.
3. Added all the 'COMBINED' sheet from the year 1937 - 2016 into one sheet.
4. Added a new column **Year** to classify the different sheet data