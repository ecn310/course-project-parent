**Open Atus merged variable
use "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\merged_data.dta"

** Drop _merge data 
drop _merge

** Merge the two sets on the statefips variable
merge m:1 statefips using "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\County_cohort_trends with population weights.dta"

**Drop _merge variable
drop _merge

** Merge State data 
merge m:1 statefips using "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Updated data set with median income(for master).dta"

** Label the new variables
label variable perm75_popw "Born into 75% rank at 24 age"
label variable perm25_popw "Born into 25% rank at 24 age"

** Save finished data set to use for analysis
save "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Merged,Weighed,Labled.dta"