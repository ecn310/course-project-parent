* This is how to merge the ATUS data, fill in any file path with your own personal one from the downloaded data on github 
use "AtusCPS_2014_", clear
merge m:1 tucaseid using "AtusSUM_2014_"
rename _merge _merge_old
merge m:m tucaseid using "AtusROST_2014_"
**Rename gestfips to statefips to match TOA
rename gestfips statefips

** Save fully merged data set
save "merged_data.dta", replace
clear 
