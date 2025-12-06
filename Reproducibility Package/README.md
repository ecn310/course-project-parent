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
opportunity data is stored on GitHub, under the name ”countycohorttrends.dta”GitHub link as well as ATUS merged data set is stored on GitHub under Merged data. The Census Bureau is save under the name ACSDT5Y2014.B19013_2025-12-03T153340.zip in the data section as well. 


### Data Manipulation

- Compiled all the Equity of Opportunity county intergenerational mobility estimates by birth cohort from 2014 into Stata. This was the only year it was actually avlible for and had indvidual data for the population.
-  We then weighed the data by said popluation as it had to be aggregated up to a state level. [Log showing work](https://github.com/ecn310/course-project-parent/blob/main/Reproducibility%20Package/Code/New%20merge%20with%20population%20weight.smcl)
- Organized ATUS data and appended all of the stata microfiles together along with the CPS data which has participants identify their state Fips code.[ATUS Merge .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/ATUS%20Fully%20Merged/ATUSCPSmerged.do)
- We then used the Fips code to merge the ATUS data along with the Equality of opportunity data because it also contains the Fips code for the state that each county is in.[ATUS+TOA county data merge.do](https://github.com/ecn310/course-project-parent/blob/b47d768014896da679cf570fb0da139a7cbb1d51/Working%20Data/merge%20how%20to)
- What we ended up with was a fully combined data set with the variable of child income at age 24 for children born in the 25th+75th percentile as our indicator of intergenerational mobility in each state.
- We then added the state income average data for the year 2014 by mergeing data from the Census Bureau. [Log for merging](https://github.com/ecn310/course-project-parent/blob/main/Reproducibility%20Package/Code/Log%20for%20merging%20adding%20median%20income.smcl)
- [Master do. file](https://github.com/ecn310/course-project-parent/blob/1b50d5ef893f0fc3d393899add9c4ba14b1f2cc9/Reproducibility%20Package/Code/Master%20Do-file%20for%20Merging%20Datasets%202.do) that complies all the prior .dos


### Raw Data Links on GitHub

- [ATUS cps 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atuscps_2014_RAW.zip)
- [ATUS sum 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atussum_2014_RAW.zip)
- [OPA county cohorts trends](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/county_cohort_trends.dta)
- [State income data](https://github.com/ecn310/course-project-parent/blob/95bc75d6e2d24e675516d497e71ab15b8ddee240/Reproducibility%20Package/Data/ACSDT5Y2014.B19013_2025-12-03T153340.zip)

### Analysis data/.do Files 

- [Merge Scatterploy and ttest of vairables .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/~merge%2C%20scatterplot%20and%20ttest%20of%20vairables.do.stswp)
- [Parental Investment vs Intergenational Mobility.png](https://github.com/ecn310/course-project-parent/blob/e219da01a47e43b2cb7162e4abc5adea72f47d88/Parental%20Investment%20vs%20Intergenerational%20Mobility.png)
- [ATUS Merge .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/ATUS%20Fully%20Merged/ATUSCPSmerged.do)
