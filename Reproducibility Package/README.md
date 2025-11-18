### Data Acquisition
To Access The Equality of Opportunity, First click the link to travel to the Equality of Opportunity
websiteThe Equality of Opportunity, Then scroll down to the section that says ”Is the United States
Still a Land of Opportunity? Recent Trends in Intergenerational Mobility”, then click to view data
and download the ”Intergenerational Mobility Estimates by County and Birth Cohort” as a Stata
download.To access The American Time Use Survey First, use the American Time Use Survey
link provided: American Time Use Survey. From there click on the tab ATUS Data and select the
drop down, ATUS data files. From there Select American Time Use Survey - 2014 Microdata files
and scroll down until you see ATUS 2014 Activity file (zip) where you can download the code as a
.do file for Stata analysis. We have stored the data in GitHub under multiple links, The Equality of
opportunity data is stored on GitHub, under the name ”countycohorttrends.dta”GitHub link as well as
ATUS DataOur merged data set is stored on GitHub under Merged data

### Data Manipulation

- Compiled all the Equity of Opportunity income data from 2014 into Stata. First began by
organising the OA data into excel making sure all the data had similar variables across each
excel sheet page. Then imported onto stata using import code. The data already demonstrated
just the mean income of each state by percentile between 2 genders, so we had to encode the
data from string to double byte data storage type, to get results which showed the correlations
between each percentiles within a scatterplot.

- Organized ATUS data and appended all of the stata microfiles together along with the CPS data
which has participants identify their state Fips code, we then used the Fips code to merge the
ATUS data along with the Equality of opportunity data because it also contains the Fips code
for the state that each county is in. We had to take the mean of each county in each state to be
able to merge the Equality of Opportunity data along with the ATUS data. What we ended up
with was a fully combined data set with the variable of child income at age 24 for children born
in the 25th percentile as our indicator of intergenerational mobility in each state.

### Raw Data Links 

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
