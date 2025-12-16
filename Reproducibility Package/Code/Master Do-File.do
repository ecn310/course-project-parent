* Master Do-file for Reproducibility Package 


***Fill in any file path with your own personal one from the downloaded data on github 
*** Open log

*  Open in stata 18 
version 18

* Set working directory to personal path of Parent folder or Reproducibility Package folder
cd "YOUR FILE PATH"

* Open log
log using "Code\Master Log.log", replace

* Install all packages that this project requires:
ssc install outreg2, replace
ssc install estout, replace

* Execute Data Cleaning and Preparation
*** Clean and label all ATUS data 
do "Code\ATUS-CPS.do"
clear
do "Code\ATUS-SUM.do"
clear
do "Code\ATUS-ROST.do"
clear
*** Merge the 3 ATUS data sets toghther on the variable statefips
do "Code\ATUSCPSmerged.do"
clear
*** Mean of each county, weighted by it population, up to the state level. This is to match the ATUS statefips variable 
do "Code\TOA-POP.do"
clear
***Clean the state average income from the U.S. Census Bureau dataset of extra variables and add the statefips variable
do "Code\STATE-AV.do" 

*** Merge the 3 data sets
clear
do "Code\MergeATUS-TOA-STATE.do"

* Generate Tables and Figures
***Create state aberivation variable and makes histograms and scatterplots
do "Code\State labeled, Hist, and Scatter (Weighted data).do"
*** Create high mobility indicator (above median) variables for ttest 
do "Code\Ttest.do"

**Delete unzipped data/data to big for GitHub made during merging process
erase "Data\atuscps_2014.dat"
erase "Data\Merge\merge_data.dta"
* Close log 
log close








