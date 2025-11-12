* This is how to merge the ATUS data, fill in any file path with your own personal one from the downloaded data on github 
use "C:\Users\akgilmar\Downloads\atuscps_2014_\atuscps_2014_.dta", clear
merge m:1 tucaseid using "C:\Users\akgilmar\Downloads\atussum_2014_.dta"
rename _merge _merge_old
merge m:m tucaseid using "C:\Users\akgilmar\Downloads\atusrost_2014_.dta"
save "merged_data.dta", replace