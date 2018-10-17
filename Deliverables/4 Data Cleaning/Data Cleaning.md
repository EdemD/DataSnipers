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



## 2. Additional Species

## 3. Woody Plant
### Files list
* 1937 woodyplantDATA_09252017.xlsx
* 2002_ woodyplantDATA _09202017.xls
* 2006_ woodyplantDATA_09202017.xls
* 2011_ woodyplantDATA_09202017.xls
* 2016_ woodyplantDATA_12162016.xlsx

### Licensing 
> We did not find any license or usage terms with the data

### Metadata
The data in this folder covers the year 1937, 2002, 2006, 2011, 2016

* Useful findings
	* Taxon is a code used that can be referenced back to the _NYBG Species Code Master List JAS12002016_ and show the species Latin names (This is the combination the Genus and Specific epithet columns)


*  1937  
File appears to be corrupted - Cannot be opened

* 2002  
	* 1305 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* Origin
		* Genus
		* Specific epithet
		* Taxon
		* dbh.cm
		* tree.ba.sq.cm  
* 2006  

	* 4624 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* Origin
		* Genus
		* Specific epithet
		* Taxon
		* dbh.cm
		* tree.ba.sq.cm  

* 2011 - There is a 5 year gap/interval now, previous interval was 4 year and additional attributes are being recorded

	* 5690 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* Origin (**NOT SURE BUT appears to now been renamed N/S  and seem to only be recording N and S. WHY???**)
		* Genus
		* Specific epithet
		* Taxon
		* dbh.cm
		* tree.ba.sq.cm (**Now BA**)
		*  (#Tree) Tree Number?
		* Vigor
		* Stem
		* S/D/C (**What is this exactly???**)
		* Plot

* 2016 - The new5 year gap/interval continues and even more additional attributes are being recorded

	* 7360 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* N/S (**What is this exactly??? Now recording N,S and M. WHY???**)
		* Genus
		* Specific epithet
		* dbh.cm
		*  Tree Number
		* Tree Vigor
		* Stem Number
		* S/D/C  (**What is this exactly??? Now appears to have been renamed Crown Class**)
		* _**Plot slope**_
		* _**Notes (mostly empty)**_
		* _**Check Dec 2016**_
		* _**Sample Date**_
		* _**Observers**_
		* tree.ba.sq.cm (**Now BA**) - NO LONGER MEAURED -

Why are we now doing the 5 year interval starting 2011?  
Any specific reasons why we are start to collect the additional attributes?
Also greater among of specimen are being recording for subsequent inventory. Any reasons why?

### Issue with the data
* 1937 woodyplantDATA_09252017.xlsx is corrupted and cannot be opened
* 2002_ woodyplantDATA _09202017.xls file does have a year column 
* 2006_ woodyplantDATA_09202017.xls file  does have a year column 
* 2011_ woodyplantDATA_09202017.xls file  does have a year column  and have additional columns not on the 2002 and 2006 collected dataset. 
* 2016_ woodyplantDATA_12162016.xlsx file have additional columns not on the 2002 and 2006 collected dataset. However it is also missing the taxon column

### Remediation rationale
* We are going to do the analysis without the 1937 data. We believe it should not be needed the analysis because of its time gap to the next available is irregular compare to the other years dataset. 
* For analysis purposes a combined file would make calculation and correlation easier
* We are going to add a column representing just the year for the files that are missing temporal data so we can better look at the data in a year over year manner.
* We are also going to drop the taxon column from all files as it is a reference to the specific epithet column which is already present on all files
* For the scope of the questions we are attempting to answer we are going to drop the additional columns on the 2011 and 2016 files to match the previous years data

### Steps to Clean

1. For files year2002,2006, 2011 _(2002_ woodyplantDATA _09202017.xls,2006_ woodyplantDATA_09202017.xls,2011_ woodyplantDATA_09202017.xls)_ inserted a new column in column A and name it year
2. For the 2016 file, delete the dates. Format the column to Number (no decimal) and just add 2016 in the column.  To match the other files
3. Delete columns D(Plot),E(# Tree),L(Vigor),M(Stem),N(S/D/C) from 2011_ woodyplantDATA_09202017.xls file
4. Delete columns B(Observers),E(Plot Slope), G(Tree Number), K(Stem Number),L(Tree Vigor), M(Crown Class),N(Notes),O(Check Dec 2016) from 2016_ woodyplantDATA_12162016.xlsx file
5. After deletions of the _"unnecessary columns"_,add a new column called _BA_ and add the following formula : =(3.14159*((G2/2)^2))*0.0001 . Then drag the formula to apply it to the other rows. 
6. Drop the _taxon_ columns from the 2002, 2006 and 2011 files
7.  Now open a new blank Excel spreadsheet and combine the data of all years and save for future analysis
8. Close the original documents. _**DO NOT SAVE THE CHANGES TO THE ORIGINAL DOCUMENTS**_


## 4. Data Last Reviewed

## 5. Ground Cover Data

### Files list
* 2011_groundcoverDATA_09192017.xls
* 2016_groundcoverDATA_12162016.xlsx
### Licensing 
> We did not find any license or usage terms with the data

### Metadata

The ground cover data is for 2011 and 2016. _**We REALLY need the metadata for these files to be able to make better informed decisions and ask better questions of the data**_

* 2011 

	* 6115 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* Corner or Plot Corner
		* Genus
		* Species or Specific epithet
		* Abiotic/Biotic
		* 0-1
		* 1-2
		* 2-3
		*  3-4
		* 4-5
		* Sum of cover (cm)
		* % Coverage
		*Personnel
		* Date
		* Comment

* 2016 

	* 6247 specimen were collected and recorded on the following attributes
		* Transect number
		* Plot number
		* Corner(**Now Plot Corner**)
		* Genus
		* Species(**Specific epithet**)
		* 0-1
		* 1-2
		* 2-3
		*  3-4
		* 4-5
		*Personnel (**Now Observers**)
		* Date (**Now Sample Date**)
		* Comment (**Comments**)  

### Issue with the data
* 2011 dataset contains columns not available on the 2016 dataset
* Columns names are not the same

### Remediation rationale
* For analysis purposes a combined file would make calculation and correlation easier

### Steps to Clean
1. On the 2011 dataset _Groundcover_ tab, delete columns F,L,M,O,P
2. Now move the _Date_ to column A and rename it _Sample Date_. Format the column as Date (dd/mm/yyyy format)
3. Rename column B _Transect Number_
4. Rename column C _Plot Number_
5. Rename column D _Plot Corner_
6. On the 2016 dataset _Herb Transects_ tab, delete columns B, M
7. Now open a new blank Excel spreadsheet and combine the data of both years and save for future analysis
8. Close the original documents. _**DO NOT SAVE THE CHANGES TO THE ORIGINAL DOCUMENTS**_

## 6. Species Code Master List

**File** - NYBG_Species Code_Master List_JAS12022016.xlsx

**Sheets**

* Master Spp. List (woody + herb)
* pre-2016 Codes (need reconciled

### Description of Data Source

#### <u>Sheet 1 - Master Spp. List (woody + herb)</u>

**Number of Rows (sum of all sheets) -** 159

**Total Number of Columns -** 6

**Source -** The data was provided by NYBG representative

**Summary of Description** - This sheet maps the Scientific Names to their common names and the type (Herb, Non-living, Shrub, Vine). It also has the mapping to the codes that were used in 1937.

**Sample**

| Common   Names | Scientific Names    | Plant_Feature Type | Notes | 1937code | JS Notes |
| -------------- | ------------------- | ------------------ | ----- | -------- | -------- |
| box elder      | Acer negundo        | Tree               |       |          |          |
| norway maple   | Acer plantanoides   | Tree               |       |          |          |
| sycamore maple | Acer pseudoplatanus | Tree               |       |          |          |
| red maple      | Acer rubrum         | Tree               |       |          |          |
| sugar maple    | Acer saccharum      | Tree               |       |          |          |

#### <u>Sheet 2 - pre-2016 Codes (need reconciled</u>

**Number of Rows -** 95

**Total Number of Columns  -** 6

**Source -** The data was provided by NYBG representative

**Summary of Description** - This sheet contains the mapping for the codes used for the Species Latin Name before 2016. It also specifies whether a particular species code was used in data from 

**Sample**

### Licensing

We did not find any license or usage terms with the data

### Metadata

### Issues with the data

- 

### Remediation Rationale

- 

### Steps to Clean

1. 

## 7. Forest Management

## 8. Forest Restoration Planting

**File** - NYBG Forest Restoration Plantings - 2007 to 2018.xlsx

### Description of Data Source

**Number of Rows -** 1233

**Total Number of Columns -** 11

**Source -** The data was provided by NYBG representative

**Summary of Description** - This worksheet has the information on the restoration initiatives by the NYBG since 2007 till 2018. It provides -

> Quantity, Species, Plant Type (Herb, Shrub, Tree), Height, Location, Grid, Date Planted

for the plants planted.

**Sample**

| Qty  | Taxon                | Plant Type | Height | Location                | Grid | Source | Nursery        | Date Planted | # of Volunteers | Additional Notes        |
| ---- | -------------------- | ---------- | ------ | ----------------------- | ---- | ------ | -------------- | ------------ | --------------- | ----------------------- |
| 4    | Quercus bicolor      | Tree       | ≥24"   | Main Trail              |      | NYBG   | NYBG           | May-07       | 2               | Regular Day: Accession# |
| 5    | Hamamelis virginiana | Shrub      | ≥24"   | Magnolia Way            |      | NYBG   | RPM Ecosystems | 11/11/2007   | 2               |                         |
| 4    | Hamamelis virginiana | Shrub      | ≥24"   | Bridge Trail (Entrance) |      | NYBG   | RPM Ecosystems | 11/11/2007   | 2               |                         |
| 12   | Viburnum dentatum    | Shrub      | ≥24"   | Main Trail              |      | NYBG   | RPM Ecosystems | 11/11/2007   | 2               |                         |
| 12   | Viburnum dentatum    | Shrub      | ≥24"   | Oak Trail               |      | NYBG   | RPM Ecosystems | 11/11/2007   | 2               |                         |

​     

### Licensing

We did not find any license or usage terms with the data

### Metadata

**Qty -** The quantity of plants planted

**Taxon -** a taxonomic group of any rank, such as a species, family, or class. (dictionary.com)

**Plant Type -** Whether the planted plant is

* Herb
* Shrub
* Tree

**Height** - Height of the planting

* greater or equal to 24"

* less than 24"
* n/a

**Location -** Location of the planting

**Grid -** Grid where the planting occurred

**Source -** Source of funding (needs verification)

**Nursery -** (doubt)

**Date Planted -** Date the planting was done

**# of Volunteers -** Number of volunteers who participated in the planting

**Additional Notes -** Additional Notes for the planting drive

### Issues with the data

- There are entries for which the data captured are restricted to just Quantity and Plant Type

- There are multiple instances of values for **Heights** used to capture the same data. Ex: >= 24 and >=24" refer to the same value

- There multiple values in **Location** column which might refer to the same value. Due to lack of evidence, we would skip cleaning on these.

- For the column **Grid** there are multiple ways the data is captured that is leading to inconsistency. Examples of these include - 

  > L7+L8
  >
  > L7/L8
  >
  > L7-L8
  >
  > L7-8
  >
  > L7,. L8
  >
  > L7-9, M7-9
  >
  > L7, L8,L9
  >
  > L7, L8,

- For the column **Date Planted**, there are some data not captured consistently and would make it difficult to analyze

  > 10/2009, 11/2009
  >
  > 4/24+25/2009

  It would be difficult to convert the first one into a meaningful date, since we cannot correctly predict if it is a day or a month. For the second one, even though we can get the dates referenced, multiple values on single column might trouble the analysis.

- For the column **# of Volunteers** one of the value captured is 'volunteer' instead of a numeric data.

- There are summary data in the same sheet which contains the raw data.

### Remediation Rationale

- We cannot provide for missing values for most of the records, and hence the analysis would suffer. This would simply create a wrong picture of the whole initiative. We would still try to draw a conclusion with a error parameter to see if we can get some meaning out of it.

- For the places where multiple data is captured in one cell, we would simply need to omit these data. We cannot divide those into separate rows due to lack of enough information. Ex - For the below entry, we cannot divide this record into respective records for individual grids - L7, L8, K8 and K9. This is because, we do not know how much Qty was planted in each of these Grids.

  | Qty  | Taxon                | Plant Type | Height | Location | Grid            |
  | ---- | -------------------- | ---------- | ------ | -------- | --------------- |
  | 24   | Viburnum prunifolium | Shrub      | <24"   |          | L7, L8,. K8, K9 |

  We would still remove all the / and + with , to make it more consistent. We would also remove the space after comma (, ) so that it becomes easier if we decide to split the data by running a function.

- We can replace the values that we are confident represent the same state. This is more valid for the column- **Heights**.

- Would convert the date into valid format. If day is not given, would add 1st day of the month to make it valid. In analysis we would be taking month into consideration and hence this should not affect the accuracy of the data set.

### Steps to Clean

1. Deleted the summary data from the end of the record.
2. Modified column name **Height** to **Height (inches)**
3. In the column Height (inches)
   * Replaced **≥24"** and **>24** with **≥24**
   * Replaced **<24"** with **<24**
4. In the Column **Grid**
   * Replaced comma and space (, ) with just a comma, i.e. got rid of the extra space.
   * Replace / and + with comma (,)
   * Manually removed the erroneous period symbol from one of the record
   * Filtered all the data that have a hyphen (-) symbol to represent continuation, since the number is low, manually fixed them to show actual grid numbers separated by comma (,). Ex - Replaced **L14-15,M15-16** with **L14,L15,M15,M16**
   * Manually fixed the date in the range **I128:I136** from **4/24+25/2009** to **4/25/2009**
   * Manually fixed the date in the range **I106:I126** from **10/2009, 11/2009** to **11/01/2009**
   * Deleted the values 'Volunteers' from **J711:J734**

## 9. TFF Management Records

## 10. Updated FMP Charts

