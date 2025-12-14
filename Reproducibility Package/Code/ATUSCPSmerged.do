* This is how to merge the ATUS data
use "Data\AtusCPS_2014_.dta", clear
merge m:1 tucaseid using "Data\AtusSUM_2014_.dta"
rename _merge _merge_old
merge m:m tucaseid using "Data\AtusROST_2014_.dta"
**Rename gestfips to statefips to match TOA
rename gestfips statefips
** Save fully merged data set
save "Data\merged_data.dta", replace


