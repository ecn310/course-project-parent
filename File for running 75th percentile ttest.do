**Guide to running ttest on 75th percentile of children.
use "C:\Users\oalevesq\Downloads\New merged data with 25th and 75th (1).dta"
summarize perm_res_p75_kr24 , detail
generate highmob = perm_res_p75_kr24 > r(p50)
tab highmob
ttest trthh, by(highmob)