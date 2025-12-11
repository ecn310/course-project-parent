** This .do is made for Stata version 18.0
**Fill in any file path with your own personal one from the downloaded data on github 

** Use county_cohort_trends.dta from the Opportunity Atlas 
use "county_cohort_trends.dta" 

**Multiply population 
gen w_perm25 = perm_res_p25_kr24 * cty_pop2000
gen w_perm75 = perm_res_p75_kr24 * cty_pop2000

**Collapse to state level
collapse (sum) w_perm25 w_perm75 cty_pop2000, by(state_id)

**Recover the population-weighted average
gen perm25_popw = w_perm25 / cty_pop2000
gen perm75_popw = w_perm75 / cty_pop2000

*Rename state_id to statefips so it matches ATUS 
rename state_id statefips

** Save TOA weighted data
save "County_cohort_trends with population weights.dta"


