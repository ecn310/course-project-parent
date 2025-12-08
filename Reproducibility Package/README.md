### Data Acquisition
  - To Access **The Equality of Opportunity**, First click the link to travel to the Equality of Opportunity website [Equity of Opportunity](https://opportunityinsights.org/data/),
  -  Then scroll down to the section that says ”Is the United States
Still a Land of Opportunity? Recent Trends in Intergenerational Mobility”, then click to view data and download the ”Intergenerational Mobility Estimates by County and Birth Cohort” as a Stata download.

  - To access **The American Time Use Survey First**, use the American Time Use Survey
link provided, [American Time Use Survey](https://www.bls.gov/tus/data.htm)
- From there Select American Time Use Survey - 2014 Microdata files
and scroll down until you see ATUS 2014 Activity summary file (zip), and ATUS-CPS 2014 file (zip) where you can download the code as a zip file and then view the do. file for Stata analysis.

- To access the [Census Bureau](https://data.census.gov/table?q=table+B19013&g=010XX00US$0400000_040XX00US01,02,04,05,06,08,09,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,44,45,46,47,48,49,50,51,53,54,55,56&y=2014) data for the avereage income of the state as a whole use this link. Then click the drop dowm for more tools and select download in excel format.

- We have stored the data in GitHub under multiple links, The Equality of
opportunity data is stored on GitHub, under the name [countycohorttrends.dta](https://github.com/ecn310/course-project-parent/blob/10d7a487d6bf84e0d8d1ca2c392b02a63c6566a5/Reproducibility%20Package/Data/county_cohort_trends.dta) as well as ATUS merged data set is stored on GitHub under the [various names](https://github.com/ecn310/course-project-parent/tree/10d7a487d6bf84e0d8d1ca2c392b02a63c6566a5/Reproducibility%20Package/Data/ATUS%20RAW). The Census Bureau is save under the name [ACSDT5Y2014.B19013_2025-12-03T153340.zip](https://github.com/ecn310/course-project-parent/blob/10d7a487d6bf84e0d8d1ca2c392b02a63c6566a5/Reproducibility%20Package/Data/ACSDT5Y2014.B19013_2025-12-03T153340.zip) in the data section as well. 


### Data Manipulation
- The [Master do.](https://github.com/ecn310/course-project-parent/blob/10d7a487d6bf84e0d8d1ca2c392b02a63c6566a5/Reproducibility%20Package/Code/Master%20Do-File.do) is a compolation of 7 do. files for cleaning and merging of the data sets. They are split up mainly due to the size of the ATUS data sets code.
- The first command allows for use of outreg2 and estout for ease of exporting to LaTeX, where our report was created
- The second demand directs to the folder that has accesse to all downawled do. files from github
- The third set of commands exacutes the .do files that clean, lable and merge the data sets
- The last command excacutes the do. that creates our figures and tables


### Codebook
- Codebook for variables of fully combinded data set

| Variable names | Variable description                                                                                          |
|----------------|---------------------------------------------------------------------------------------------------------------|
| statefips      | State Federal Information Processing Standard (FIPS) code                                                     |
| perm75_popw    | Born into 75% income rank at age 24 weighted by population                                                                        |
| perm25_popw    | Born into 25% income rank at age 24  weighted by population                                                                         |
 


### Raw Data Links on GitHub

- [ATUS cps 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atuscps_2014_RAW.zip)
- [ATUS sum 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atussum_2014_RAW.zip)
- [OPA county cohorts trends](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/county_cohort_trends.dta)
- [State income data](https://github.com/ecn310/course-project-parent/blob/95bc75d6e2d24e675516d497e71ab15b8ddee240/Reproducibility%20Package/Data/ACSDT5Y2014.B19013_2025-12-03T153340.zip)

### Analysis data/.do Files 

- [Merge Scatterploy and ttest of vairables .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/~merge%2C%20scatterplot%20and%20ttest%20of%20vairables.do.stswp)
- [Parental Investment vs Intergenational Mobility.png](https://github.com/ecn310/course-project-parent/blob/e219da01a47e43b2cb7162e4abc5adea72f47d88/Parental%20Investment%20vs%20Intergenerational%20Mobility.png)
- [ATUS Merge .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/ATUS%20Fully%20Merged/ATUSCPSmerged.do)
