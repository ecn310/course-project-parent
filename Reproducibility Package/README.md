### Data Acquisition

- First, create a folder on your device labeled "Parent," where all data and do-files will be saved once downloaded.
- To access The Equality of Opportunity data, click the link to travel to the [Equality of Opportunity website](https://opportunityinsights.org/data/). Then scroll down to the section titled "Is the United States Still a Land of Opportunity? Recent Trends in Intergenerational Mobility." Select "Trends in Mobility: County Intergenerational Mobility Estimates by Birth Cohort" and download it as a Stata file. Name it "county_cohort_trends.dta" and save it to the Parent folder on your personal device.
- To access the American Time Use Survey (ATUS) data, first direct yourself to the [ATUS webpage](https://www.bls.gov/tus/). Then select the dropdown menu labeled "ATUS Data" and click "Data Files." From there, select "American Time Use Survey—2014 Microdata files" and go to its page. Scroll down until you see the three datasets: ATUS 2014 Activity summary file (zip), ATUS-CPS 2014 file (zip), and ATUS 2014 Roster file (zip). Download each as a zip file, extract all files from the zip, and save them into the Parent folder under the names atuscps_2014.dat, atussum_2014.dat, and atusrost_2014.dat.
- To access the US Census Bureau data for state median income, go to the [USCB data webpage](https://data.census.gov/). In the search bar on the site, look up table B19013. Then select the first option, "B19013 Median Household Income in the Past 12 Months (in 2024 Inflation-Adjusted Dollars)." On the left side, click on the "Filters" dropdown. In the Geographies section, select "State," then select "All States within United States, Puerto Rico, and the Island Areas." In the same sidebar, go to "Years" and select 2014. Then select the "Download" tab in the top right corner, choose the zip option, deselect "ACS 1-Year," and select "All" for "ACS 5-Year Estimates Detailed Tables." Download the dataset, unzip the downloaded file, and save the file ACSDT5Y2014.B19013-Data to the Parent folder under the same name.
- To access the needed do files go to the [Reproducibility Package/code](https://github.com/ecn310/course-project-parent/tree/ceb1bc071ba56f67a7fcff9d2d4c2227f584db6f/Reproducibility%20Package/Code) on github, and download all .do files in it. The only non necessary file is the Master Log, that can be used to check if do. files are working correctly.


If any of these links are broken or the data structure has changed, please refer to our [Reproducibility Package/data](https://github.com/ecn310/course-project-parent/tree/287284051150ed3024de99105c467d853ef8aa41/Reproducibility%20Package/Data) where archived copies are available.


### Data Manipulation
- The [Master do-file](https://github.com/ecn310/course-project-parent/blob/ceb1bc071ba56f67a7fcff9d2d4c2227f584db6f/Reproducibility%20Package/Code/Master%20Do-File.do)is a compilation of seven do-files for cleaning and merging the datasets. It can be found on GitHub under Reproducibility Package\Code with the name Master Do-File.do. The do-files are split up mainly due to the size of the ATUS datasets' code.
- Open the master log 
- The 1st command changes the Stata version to 18.
- The 2nd command allows for use of outreg2 and estout for ease of exporting to LaTeX, where our report was created.
- The 3rd command directs to the folder that has access to all downloaded do-files and data from GitHub (the Parent folder).
- The 4th set of commands executes the do-files that clean, label, and merge the datasets.
- The 5th set of commands executes the do-file that creates our figures and tables.
- The last command closes the log 


### Codebook
- Codebook for variables of Merged,Weighed,Labled.dta

| Variable names | Variable description                                                                                          |
|----------------|---------------------------------------------------------------------------------------------------------------|
| statefips      | State Federal Information Processing Standard (FIPS) code                                                     |
| perm75_popw    | Born into 75% income rank at age 24 weighted by population                                                                        |
| perm25_popw    | Born into 25% income rank at age 24  weighted by population                                                   |
| trthh| Total Time spent providing childcare (minutes) |
|medianinc| State Median Income |
