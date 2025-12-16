### Data Acquisition

- First, create a folder on your device labeled “Parent”. Then, within it, create three subfolders: **Code, Data, and Outputs**.   Also in the **Data** folder create another subfolder labeled **Merge**. All data will be saved to the **Data** file, and all merged data will be saved to its subfile **Merge**. All do-files will be saved to the **Code** file and all outputs will be saved to the **Outputs** folder. Or you can sync our GitHub to your own local GitHub desktop and accesse the Data, Code, and Outputs files there. 
- To access The Equality of Opportunity data, click the link to travel to the [Equality of Opportunity website](https://opportunityinsights.org/data/). Then scroll down to the section titled "Is the United States Still a Land of Opportunity? Recent Trends in Intergenerational Mobility." Select "Trends in Mobility: County Intergenerational Mobility Estimates by Birth Cohort" and download it as a Stata file. Name it "county_cohort_trends.dta" and save it to the **Parent** folder in the **Data** subfolder on your personal device.
  
- To access the American Time Use Survey (ATUS) data, first vist the [ATUS webpage](https://www.bls.gov/tus/). Then select the dropdown menu labeled "ATUS Data" and click "Data Files." From there, select "American Time Use Survey—2014 Microdata files". Scroll down until you see the three datasets: ATUS 2014 Activity summary file (zip), ATUS-CPS 2014 file (zip), and ATUS 2014 Roster file (zip). Download each as a zip file, extract all files from the zip, and save the DAT files from each into the **Parent** folder and then the **Data** subfolder under the names atuscps_2014.dat, atussum_2014.dat, and atusrost_2014.dat.

- To access the US Census Bureau data for state median income: Go to the [USCB data webpage](https://data.census.gov/) and in the search bar on the site, look up table B19013. Select the first option: "B19013 Median Household Income in the Past 12 Months (in 2024 Inflation-Adjusted Dollars)." On the left side, click the "Filters" button to open the filters panel. In the Geographies section, select "State", then click the "All States in the United States and Puerto Rico" button at the top, and deselect Puerto Rico from the list. (Alternative: If the "All States" button doesn't work, individually select every state option except Puerto Rico.) Scroll down in the same sidebar to the Years section and select 2014. Close the filters panel, then in the toolbar at the top right corner, click the "Download" option. In the download window, choose the zip option and select "ACS 5-Year Estimates Detailed Tables", then download the file. Unzip the downloaded file and locate ACSDT5Y2014.B19013-Data inside.  Save this file to the **Data** subfolder within the **Parent** folder, keeping the filename: ACSDT5Y2014.B19013-Data.

- To access the needed do files go to the [Reproducibility Package/Code](https://github.com/ecn310/course-project-parent/tree/e98d97304315fa7129486342de9651c770b39db9/Reproducibility%20Package/Code) on GitHub, and download all .do files in it to the **Code** subfile of the **Parent** File. The only non necessary file is the Master Log, that can be used to check if do. files are working correctly.

- If any of these are accessed from GitHub, the file atuscps_2014.zip must be extracted/unzipped, and saved to the **Data** folder. The reason it is saved as a Zip orignally is due to its size being to big for GitHUb. However, in the **Master do-file** the unziped version gets deleted as to not cause any issues. 

If any of these links are broken or the data structure has changed, please refer to our [Reproducibility Package/data](https://github.com/ecn310/course-project-parent/tree/e98d97304315fa7129486342de9651c770b39db9/Reproducibility%20Package/Data) where archived copies are available.


### Data Manipulation and Analysis 
- The Master do-file is a compilation of seven do-files for cleaning and merging the datasets. It can be found on GitHub under **Reproducibility Package\Code** with the name **Master Do-File.do**. The do-files are split up mainly due to the size of the ATUS datasets' code.
- **In the Master do-file you must change the command cd "YOUR FILE PATH" to your own file path of the Reproducibility Package folderr**
- The log for this Master do is saved in **Reproducibility Package/Code** under the name **Master Log.log**

### Codebook
- Codebook for variables of Merged,Weighed,Labled.dta

| Variable names | Variable description                                                                                          |
|----------------|---------------------------------------------------------------------------------------------------------------|
| statefips      | State Federal Information Processing Standard (FIPS) code                                                     |
| perm75_popw    | Born into 75% income rank at age 24 weighted by population                                                                        |
| perm25_popw    | Born into 25% income rank at age 24  weighted by population                                                   |
| trthh| Total Time spent providing childcare (minutes) |
|medianinc| State Median Income |
|state_abbrev|State Abbreviations |
|highmob25||
|highmob75||
|high_inc||
