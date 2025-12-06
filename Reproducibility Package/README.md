### Data Acquisition
  - To Access **The Equality of Opportunity**, First click the link to travel to the Equality of Opportunity website [The Equality of Opportunity](http://www.equality-of-opportunity.org/data/),
  -  Then scroll down to the section that says ”Is the United States
Still a Land of Opportunity? Recent Trends in Intergenerational Mobility”, then click to view data and download the ”Intergenerational Mobility Estimates by County and Birth Cohort” as a Stata download.

  - To access **The American Time Use Survey First**, use the American Time Use Survey
link provided, [American Time Use Survey](https://www.bls.gov/tus/data.htm)
- From there Select American Time Use Survey - 2014 Microdata files
and scroll down until you see  ATUS 2014 Roster file (zip), ATUS 2014 Activity summary file (zip), and ATUS-CPS 2014 file (zip) where you can download the code as a zip and then view the do. file for Stata analysis.

- We have stored the data in GitHub under multiple links, The Equality of
opportunity data is stored on GitHub, under the name ”countycohorttrends.dta”GitHub link as well as ATUS DataOur merged data set is stored on GitHub under Merged data
- [Data for the state average](https://github.com/ecn310/course-project-parent/blob/b82431925b57fc874984ab54861da141ad84abbd/Reproducibility%20Package/Data/ACSDT5Y2014.B19013_2025-12-03T153340.zip)

### Data Manipulation

- Compiled all the Equity of Opportunity income data from 2014 into Stata. First began by
organising the OA data into excel making sure all the data had similar variables across each
excel sheet page.[2014 data](https://github.com/ecn310/course-project-parent/blob/b47d768014896da679cf570fb0da139a7cbb1d51/Opportunity%20Atlas%20Data/OA%20Clean%20Data.xlsx)
-  Then imported onto stata using import code. The data already demonstrated
just the mean income of each state by percentile between 2 genders, so we had to encode the
data from string to double byte data storage type, to get results which showed the correlations between each percentiles within a scatterplot.[ 2014 .do](https://github.com/ecn310/course-project-parent/blob/b47d768014896da679cf570fb0da139a7cbb1d51/Working%20Data/AUVER.do)

- Organized ATUS data and appended all of the stata microfiles together along with the CPS data which has participants identify their state Fips code.[ATUS Merge .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/ATUS%20Fully%20Merged/ATUSCPSmerged.do)
- We then used the Fips code to merge the ATUS data along with the Equality of opportunity data because it also contains the Fips code for the state that each county is in.[ATUS+TOA county data merge.do](https://github.com/ecn310/course-project-parent/blob/b47d768014896da679cf570fb0da139a7cbb1d51/Working%20Data/merge%20how%20to)
- We had to take the mean of each county in each state to be able to merge the Equality of Opportunity data along with the ATUS data.
- What we ended up with was a fully combined data set with the variable of child income at age 24 for children born in the 25th+75th percentile as our indicator of intergenerational mobility in each state.


### Raw Data Links on GitHub

- [ATUS cps 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atuscps_2014_RAW.zip)
- [ATUS sum 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atussum_2014_RAW.zip)
- [ATUS rost 2014](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/ATUS%20RAW/atusrost_2014_RAW.zip)
- [OPA county cohorts trends](https://github.com/ecn310/course-project-parent/blob/0d51bb982c575758de43cf34db5d9b5236805036/Working%20Data/county_cohort_trends.dta)
- [OPA data?](https://github.com/ecn310/course-project-parent/tree/0d51bb982c575758de43cf34db5d9b5236805036/Opportunity%20Atlas%20Data)

### Analysis data/.do Files 

- [Merge Scatterploy and ttest of vairables .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/~merge%2C%20scatterplot%20and%20ttest%20of%20vairables.do.stswp)
- [Parental Investment vs Intergenational Mobility.png](https://github.com/ecn310/course-project-parent/blob/e219da01a47e43b2cb7162e4abc5adea72f47d88/Parental%20Investment%20vs%20Intergenerational%20Mobility.png)
- [ATUS Merge .do](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Working%20Data/ATUS%20Fully%20Merged/ATUSCPSmerged.do)
- [OPA excel](https://github.com/ecn310/course-project-parent/blob/19fd53165ae5ca635d1ee09edeff39273e1d4487/Opportunity%20Atlas%20Data/OA%20Clean%20Data.xlsx)
