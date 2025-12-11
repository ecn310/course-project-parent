* Master Do-file for Reproducibility Package 



***Fill in any file path with your own personal one from the downloaded data on github 
* 1. Set to stata version 18 
version 18
* 2. Install all packages that this project requires:
ssc install outreg2, replace
ssc install estout, replace

* 3. Set working directory
cd "C:\Users\akgilmar\OneDrive - Syracuse University\ECN"

* 4. Execute Data Cleaning and Preparation
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\ATUS-CPS.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\ATUS-SUM.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\ATUS-ROST.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\ATUSCPSmerged.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\TOA-POP.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\STATE-AV.do"
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\MergeATUS-TOA-STATE.do"

* 5. Generate Tables and Figures
do "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\.do Files\State labled, Hist, and Scatter (Weighted data).do"


