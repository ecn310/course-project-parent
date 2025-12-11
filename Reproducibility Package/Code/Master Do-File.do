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
do "ATUS-CPS.do"
do "ATUS-SUM.do"
do "ATUS-ROST.do"
do "ATUSCPSmerged.do"
do "TOA-POP.do"
do "STATE-AV.do"
do "MergeATUS-TOA-STATE.do"

* 5. Generate Tables and Figures
do "State labled, Hist, and Scatter (Weighted data).do"
