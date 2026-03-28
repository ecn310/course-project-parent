*drop missing values 
drop if missing(perm_res_p25_kr24, perm_res_p75_kr24, perm_res_p25_c1823, perm_res_p75_c1823, perm_res_p25_c19, perm_res_p75_c19, perm_res_p25_kr26, perm_res_p75_kr26)

*check and drop all zeros
foreach var in perm_res_p25_kr24 perm_res_p75_kr24 perm_res_p25_c1823 perm_res_p75_c1823 perm_res_p25_c19 perm_res_p75_c19 perm_res_p25_kr26 perm_res_p75_kr26 {
    count if `var' == 0
}
foreach var in perm_res_p25_kr24 perm_res_p75_kr24 perm_res_p25_c1823 perm_res_p75_c1823 perm_res_p25_c19 perm_res_p75_c19 perm_res_p25_kr26 perm_res_p75_kr26 {
    drop if `var' == 0
}
