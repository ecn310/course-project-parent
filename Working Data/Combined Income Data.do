*******************************************************
* STEP 1: Set your working directory
*******************************************************
cd "C:\Users\yeachanc\OneDrive - Syracuse University\Documents\Econ files\DO"   // <-- Replace with your actual folder path

*******************************************************
* STEP 2: Import each sheet, add gender & percentile
*******************************************************

* Male - 1st percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gM_p1") firstrow clear
gen gender = "Male"
gen percentile = 1
save male_1.dta, replace
* Male - 25th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gM_p25") firstrow clear
gen gender = "Male"
gen percentile = 25
save male_25.dta, replace
* Male - 50th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gM_p50") firstrow clear
gen gender = "Male"
gen percentile = 50
save male_50.dta, replace
* Male - 75th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gM_p75") firstrow clear
gen gender = "Male"
gen percentile = 75
save male_75.dta, replace
* Male - 100th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gM_p100") firstrow clear
gen gender = "Male"
gen percentile = 100
save male_100.dta, replace

* Female - 1st percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gF_p1") firstrow clear
gen gender = "Female"
gen percentile = 1
save female_1.dta, replace
* Female - 25th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gF_p25") firstrow clear
gen gender = "Female"
gen percentile = 25
save female_25.dta, replace
* Female - 50th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gF_p50") firstrow clear
gen gender = "Female"
gen percentile = 50
save female_50.dta, replace
* Female - 75th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gF_p75") firstrow clear
gen gender = "Female"
gen percentile = 75
save female_75.dta, replace
* Female - 100th percentile
import excel "OA Clean Data.xlsx", sheet("cty_kir_27_rP_gF_p100") firstrow clear
gen gender = "Female"
gen percentile = 100
save female_100.dta, replace

*******************************************************
* STEP 3: Append all datasets into one
*******************************************************
use male_1.dta, clear
append using male_25.dta male_50.dta male_75.dta male_100.dta ///
    female_1.dta female_25.dta female_50.dta female_75.dta female_100.dta

*******************************************************
* STEP 4: Save combined dataset
*******************************************************
save "**combined_income_data.dta**", replace