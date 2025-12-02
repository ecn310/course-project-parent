cd "C:\Users\yeachanc\OneDrive - Syracuse University\Documents\Econ files\DO"  

* Step 1: Import the Excel file
import excel "stata_ready_percentiles_cleaned", firstrow clear

* Step 2: Drop rows with missing values in any of the percentile columns
drop if missing(State)

* These are empty columns that stata mistook for actual data
drop L M N O P Q R S

* code for scatter plot: scatter p50_F p50_M, mlabel(State) | abline 0 1, lcolor(red) lpattern(dash) | lfit p50_F p50_M
