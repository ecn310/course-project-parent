* Master Do-file for Reproducibility Package 


***Fill in any file path with your own personal one from the downloaded data on github 
*** Open log

*1. Open in stata 18 
version 18

* 3. Set working directory to personal path of Parent folder or Reproducibility Package folder
cd "C:\Users\akgilmar\OneDrive - Syracuse University\Documents\GitHub\course-project-parent\Reproducibility Package"

* 4. Open log
log using "Data\Master Log", replace

* 5. Install all packages that this project requires:
ssc install outreg2, replace
ssc install estout, replace

* 6. Execute Data Cleaning and Preparation
*** Cleans and labels all ATUS data 
do "Code\ATUS-CPS.do"
clear
do "Code\ATUS-SUM.do"
clear
do "Code\ATUS-ROST.do"
clear
*** Merges the 3 ATUS data sets toghther on the variable statefips
do "Code\ATUSCPSmerged.do"
clear
*** Mean of each county, weighted by it population, up to the state level. This is to match the ATUS statefips variable 
do "Code\TOA-POP.do"
clear
*** Cleans the state data and adds the statefips variable
do "Code\STATE-AV.do" 

*** Merges the 3 data setsf
clear
do "Code\MergeATUS-TOA-STATE.do"

* 7. Generate Tables and Figures
***Creates state aberivation variable and makes histograms and scatterplots
do "Code\State labled, Hist, and Scatter (Weighted data).do"
*** Creates  high mobility indicator (above median) variables for ttest 
do "Code\Ttest.do"

***Close log 
log close





