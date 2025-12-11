** Check for accurate sum stats
summarize perm25_popw, detail

** Create high mobility indicator (above median)
gen highmob25 = (perm25_popw > r(p50))

** Check distribution
tab highmob25


** Get detailed statistics for median income
summarize medianinc, detail

** Store median value
local med = r(p50)

** Create high income indicator (above median)
gen high_inc = medianinc > `med'

** Label the income variable
label define inc 0 "Low inc" 1 "High inc"
label values high_inc inc

** Check distribution
tab high_inc

** Get detailed statistics for 75th percentile mobility
summarize perm75_popw, detail

** Store median value
local med75 = r(p50)

** Create high mobility indicator (above median)
gen highmob75 = perm75_popw > `med75'

** Label mobility variables
label define mob 0 "Low mobility" 1 "High mobility"
label values highmob25 mob
label values highmob75 mob


** Check correlations

pwcorr trthh perm25_popw if high_inc==1, sig

pwcorr trthh perm25_popw if high_inc==0, sig

pwcorr trthh perm75_popw if high_inc==1, sig

pwcorr trthh perm75_popw if high_inc==0, sig

