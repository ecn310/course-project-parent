* This is how to merge the ATUS data, fill in any file path with your own personal one from the downloaded data on github 
use AtusROST_2014_.dta, clear
merge 1:1 tucaseid tulineno using AtusCPS_2014_.dta
rename _merge merge_rost_cps
merge m:1 tucaseid using AtusSUM_2014_.dta
rename _merge merge_person_sum
**Rename gestfips to statefips to match TOA
rename gestfips statefips
** Save fully merged data set
save "merged_data.dta", replace
