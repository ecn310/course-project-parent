**Open Atus merged variable
use "merged_data.dta"

** Drop _merge data 
drop _merge

** Merge the two sets on the statefips variable
merge m:1 statefips using "County_cohort_trends with population weights.dta"

**Drop _merge variable
drop _merge

** Merge State data 
merge m:1 statefips using "Updated data set with median income.dta"

** Collapse non-needed variables
collapse (mean) trthh perm25_popw perm75_popw medianinc , by(statefips)

** Label the new variables
label variable perm75_popw "Born into 75% rank at 24 age"
label variable perm25_popw "Born into 25% rank at 24 age"


** Save finished data set to use for analysis
save "Merged,Weighed,Labled.dta"