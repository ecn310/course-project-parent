* Master Do-file for Reproducibility Package 


***Fill in any file path with your own personal one from the downloaded data on github 

*1. Open in stata 18 
version 18
* 2. Install all packages that this project requires:
ssc install outreg2, replace
ssc install estout, replace

* 3. Set working directory to personal path of Parent file
cd "C:\Users\akgilmar\OneDrive - Syracuse University\Desktop\Parent"

* 4. Execute Data Cleaning and Preparation
*** Cleans and labels all ATUS data 
do "ATUS-CPS.do"
clear
do "ATUS-SUM.do"
clear
do "ATUS-ROST.do"
clear
*** Merges the 3 ATUS data sets toghther on the variable statefips
do "ATUSCPSmerged.do"
clear
*** Mean of each county, weighted by it population, up to the state level. This is to match the ATUS statefips variable 
do "TOA-POP.do"
clear
*** Cleans the state data and adds the statefips variable
do "STATE-AV.do" 

*** Merges the 3 data setsf
clear
do "MergeATUS-TOA-STATE.do"

* 5. Generate Tables and Figures
***Creates state aberivation variable and makes histograms and scatterplots
do "State labled, Hist, and Scatter (Weighted data).do"
*** Creates  high mobility indicator (above median) variables for ttest 
do "Ttest.do"
