# Data Cleaning Report

## 2. Additional Species

### <u>Files List</u>

* 2011_AdditionalSpecies_09202017.xlsx
* 2016_AdditionalSpecies_08242017.xlsx

### <u>Description of Data Source</u> 

#### 2011_AdditionalSpecies_09202017.xlsx and 2016_AdditionalSpecies_08242017.xlsx

**Sheet Name** - Additional Species

**Number of Rows (both sheet combined) ** - 2960

**Number of Columns (in both the sheets) -** 8

**Source -** The data was provided by NYBG representative

**Summary of Description** - This Additional Species document was recorded in 2011 as well as 2016 by assigning observers to Transects and Plots in the Train Family Forest. The survey was done observe various plant species to recording their 

* Genus
* Specific epithet

**Sample**

| Sample   Date | Observers      | Transect Number | Plot Number | Genus       | Specific epithet | Common (0/1) | Comments |      |
| ------------- | -------------- | --------------- | ----------- | ----------- | ---------------- | ------------ | -------- | ---- |
| 6/20/2011     | AB, DG, WO, JS | 1               | 2           | Carex       | spp.             | 0            |          |      |
| 6/20/2011     | AB, DG, WO, JS | 1               | 2           | Ageratina   | altissima        | 0            |          |      |
| 6/20/2011     | AB, DG, WO, JS | 1               | 2           | Solidago    | spp.             | 0            |          |      |
| 6/20/2011     | AB, DG, WO, JS | 1               | 2           | Polygonatum | biflorum         | 0            |          |      |
| 6/20/2011     | AB, DG, WO, JS | 1               | 2           | Maianthemum | racemosum        | 0            |          |      |

**Sheet Name** - Common Species and Features

**Number of Rows (same data in both the sheets)** - 153

**Total Number of Columns -** 3

**Source -** The data was provided by NYBG representative

**Summary of Description** - The second sheet consists of information regarding the common names of the plant species specified in the Additional Species sheet. This sheet records the following details

- Common Names
- Scientific Names 
- Plant Feature Type - Herb, Shrub, Tree or Non-Living

**Sample**

| Common   Names       | Scientific Names    | Plant_Feature Type |
| -------------------- | ------------------- | ------------------ |
| white   snakeroot    | Ageratina altissima | Herb               |
| garlic   mustard     | Alliaria petiolata  | Herb               |
| American   spikenard | Aralia racemosa     | Herb               |

***Note - One interesting fact that we observed while researching about the plant species genus is that Scientific names are made up of combining Genus of the plant and Specific Epithet.*** 

### Licensing

We did not find any license or usage terms with the data

### Metadata

**Genus -** A principal taxonomic category that ranks above species and below family, and is denoted by a capitalized Latin name (dictionary.com)

**Transect** -** A line across an area along which a study can be made of the distribution and abundance of plant species. The line is marked out with a tape and its position indicated on a map of the area (botanydictionary.org)

**Specific Epithet** -** The uncapitalized Latin adjective or noun that follows a capitalized genus name in binomial nomenclature and serves to distinguish a species from others in the same genus, as *saccharum* in *Acer saccharum* (sugar maple). Also called *trivial name* (yourdictionary.com)	

**Plant_Feature Type** -** The plant species can be identified as Trees, Shrubs, Vines, Herbs etc.  

### Issues with the data

* The Common (0/1) column in the report does not clearly specify it's significance. It fails to provide detail if the value '0' stands for common species or '1' stands for common species. There are also some blank values in the records
* The report lacks to provide detail of the total numbers of plots that were observed by the observers to record the data
* The columns Transect Number is unclear
* The column name **Observers** in Additional Species_2011 Sheet used acronyms instead of names of the observers 

### Remediation Rationale

* Compile the Additional Species data and Common Names & Features data into one comprehensive sheet.
* The Column name 'Common (0/1)' can be renamed to something more meaningful. Also, assign keys to identify what 0/1 stands for. Blank values can be filled by either entering 0 or 1, based on the plant species type (common or uncommon) 
* Total Numbers of Plots observed and dimension of the plot can be mentioned in the report
* Add names of the observers if possible in Column **Observers**

### Steps to Clean

1. Create compiled sheet and replaced all the blanks in Column **Common (0/1) **with **0/1**



## 3. 1937 Data

### <u>Files List</u>

- 1937 Data_last reviewed01172015.xls

### <u>Description of Data Source</u> 

#### 2011_AdditionalSpecies_09202017.xlsx and 2016_AdditionalSpecies_08242017.xlsx

**Sheet Name** - Transect Data from Maps_all liv

**Number of Rows ** - 586 and 232

**Number of Columns -** 12

**Source -** The data was provided by NYBG representative

**Summary of Description** - The data was recorded to observe the stem as well as all living plant species growth in the year 1937. The data has is retrieved from two sheets - **Transect Data from Map and Map Data Stem >=15cm.** The sheet records the following:

- Map No.
- Transect
- Plot
- Trees No.
- Stems
- Taxon
- Diameter at breast height (DBH) in inches
- Diameter at breast height (DBH) in centimeters
- Basal Area (mxm)

**Sample** - 

**Transect Data from Map**

| Map No.  | Transect | Plot | N/S  | Tree No. | # Stems | Taxon | DBH (in) | Taxon | DBH  | Basal Area (mxm) | Notes |
| -------- | -------- | ---- | ---- | -------- | ------- | ----- | -------- | ----- | ---- | ---------------- | ----- |
| 1937-228 | 13       | 1    | N    | 2        |         | D     | 1        | D     | 2.54 | 0.0005           |       |
| 1937-228 | 17       | 14   | S    | 2        |         | D     | 1        | D     | 2.54 | 0.0005           |       |



**Map Data Stem >=15cm**

|          | total of 246 10m x 10m plots | Living stems greater than or equal to 1 in = 2.54 cm in diameter |      |          |         |       |          |       |                    |       |                  |
| -------- | ---------------------------- | ------------------------------------------------------------ | ---- | -------- | ------- | ----- | -------- | ----- | ------------------ | ----- | ---------------- |
| Map No.  | Transect                     | Plot                                                         | N/S  | Tree No. | # Stems | Taxon | DBH (in) | Taxon | Frequency Per Plot | DBH   | Basal Area (mxm) |
| 1937-227 | 25                           | 4                                                            | N    | 1        |         | HE    | 18       | HE    | HE                 | 45.72 | 0.1642           |



### Licensing

We did not find any license or usage terms with the data

### Metadata

**Transect** - A line across an area along which a study can be made of the distribution and abundance of plant species. The line is marked out with a tape and its position indicated on a map of the area (botanydictionary.org)

**Taxon** - Taxon, plural Taxa, any unit used in the science of biological classification, or taxonomy. Taxa are arranged in a hierarchy from kingdom to subspecies, a given taxon ordinarily including several taxa of lower rank. In the classification of protists, plants, and animals, certain taxonomic categories are universally recognized; in descending order, these are kingdom, phylum (in plants, division), class, order, family, genus, species, and subspecies, or race. (britannica.com)

**DBH** (Diameter at breast height) - To standardize measurements, tree diameter is typically measured at 4.5 feet from the ground, or approximately breast height. This is referred to as diameter at breast height (DBH) (mdwfp.com)

**Basal Area** - Basal area is the common term used to describe the average amount of an area (usually an acre) occupied by tree stems. It is defined as the **total cross-sectional area** of all stems in a stand
measured at **breast height**, and expressed as per unit of land area (typically square feet per acre) (mdwfp.com)

Based on this document, the study was done on total of 246 plots that were of dimension 10m x 10m. The document gives clear picture of the tree dimension while it was measured in year 1937, average amount of area measured in acres that was occupied by the tree stems and the frequency of the type of tree in total of 246 plots. The document also serves as a key for Taxon keys used to distinguish the trees found in the plots.

### Issues with the data

- What does N/S stand for and what does it signify
- #Stem - What does #Stems signify
- How did they calculate Basal Area
- What does tree number stand for

### Steps to Clean

1. Clarify the doubts from clients
2. Make a comprehensive document with Introduction page where calculations, area considered for survey is drafted clearly
3. Use the convention to make data clear and consistent

## 4. TFF Management Records

**Sheet Name** - Form Responses 1

**Number of Rows (both sheet combined) ** - 671

**Number of Columns (in both the sheets) -** 28

**Source -** The data was provided by NYBG representative

**Summary of Description** - The data was recorded during 2015 and 2016. The data is about the projects that are part of Thain Family Forest, New York Botanical Garden. The sheet captures the data entries of volunteers who were part of the projects, the location of the project  mapped on grid, species on which observations were carried out.

**Sample**

| Project   Date | Grid Location of Project | Number of Staff Hours Worked | Number of   Volunteer/Student/Intern Hours Worked | Project Type                | Species Managed | Pesticide use | Number of Bags of Trash Collected | Type of Research | Seed species collected | Pesticide Application Rate | List Species (Quantity Planted) | Number of Bags of Recycling   Collected | Trail Name | Tasks | Description | Type of Work | Type of Work | Number of Bags of Trash   Collected | Trash Assessment? |
| -------------- | ------------------------ | ---------------------------- | ------------------------------------------------- | --------------------------- | --------------- | ------------- | --------------------------------- | ---------------- | ---------------------- | -------------------------- | ------------------------------- | --------------------------------------- | ---------- | ----- | ----------- | ------------ | ------------ | ----------------------------------- | ----------------- |
| 1/2/2015       | J10                      | 8                            | 6                                                 | Invasive Species Management | Hedera helix    | No            |                                   |                  |                        |                            |                                 |                                         |            |       |             |              |              |                                     |                   |
| 1/6/2015       | Forest                   | 7                            | 0                                                 | Snow Removal                |                 |               |                                   |                  |                        |                            |                                 |                                         |            |       |             |              |              |                                     |                   |



### Metadata

**Grid Location of project -** The geographical location of the project noted in the document

**Project Type** - Various projects associated with NYBG

**Species Managed** - The species they are observing as a part of the project



### Issues with the data

1. In Column, **Pesticide Use** in lot of places the data is missing/blank. The values for pesticide used 'Yes' is Yes an 'No' is No. 
2. The below mentioned fields are empty. 

| Description | Type of Work | Type of Work | Number of Bags of Trash   Collected | Trash Assessment? | Amount of Pesticide Used | Method | Type of Research |
| ----------- | ------------ | ------------ | ----------------------------------- | ----------------- | ------------------------ | ------ | ---------------- |
| Empty       | Empty        | Empty        | Empty                               | Empty             | Empty                    | Empty  | Empty            |

3. There are redundant fields i.e. Type of Work 
4. What does Time stamp signify.

### Steps to Clean

1. Capture data for the missing fields
2. Remove redundant columns
3. Check Time stamp values 
4. Coordinate Grid Location with GIS shape files