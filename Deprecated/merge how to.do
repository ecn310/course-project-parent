{smcl}
{com}{sf}{ul off}{txt}{.-}
      name:  {res}<unnamed>
       {txt}log:  {res}C:\Users\oalevesq\Downloads\merge how to.do
  {txt}log type:  {res}smcl
 {txt}opened on:  {res} 1 Dec 2025, 15:13:29

{com}. use "C:\Users\oalevesq\Downloads\merged_data.dta"

. 
. use "C:\Users\oalevesq\Downloads\county_cohort_trends.dta"

. 
. use "C:\Users\oalevesq\Downloads\merged_data.dta"

. 
. use "C:\Users\oalevesq\Downloads\county_cohort_trends.dta"

. 
. use "C:\Users\oalevesq\Downloads\merged_data.dta"

. 
. rename gestfips statefips
{res}{err}variable {bf}gestfips{sf} not found
{txt}{search r(111), local:r(111);}

{com}. 
. use "C:\Users\oalevesq\Downloads\county_cohort_trends.dta", clear

. 
. rename state_id statefips
{res}
{com}. 
. save "C:\Users\oalevesq\Downloads\County_cohort_trends.dta updated.dta"
{err}{p 0 4 2}
file {bf:{err}C:\Users\oalevesq\Downloads\County_cohort_trends.dta updated.dta}
already exists
{p_end}
{txt}{search r(602), local:r(602);}

{com}. 
. use "C:\Users\oalevesq\Downloads\merged_data.dta"
{err}no; dataset in memory has changed since last saved
{txt}{search r(4), local:r(4);}

{com}. 
. rename gestfips statefips
{res}{err}variable {bf}gestfips{sf} not found
{txt}{search r(111), local:r(111);}

{com}. 
. save "C:\Users\oalevesq\Downloads\merged_data.dta", replace
{txt}{p 0 4 2}
file {bf}
C:\Users\oalevesq\Downloads\merged_data.dta{rm}
saved
{p_end}

{com}. 
. drop _merge
{err}variable {bf}_merge{sf} not found
{txt}{search r(111), local:r(111);}

{com}. 
. merge m:m statefips using "C:\Users\oalevesq\Downloads\County_cohort_trends.dta updated.dta"
{res}
{txt}{col 5}Result{col 33}Number of obs
{col 5}{hline 41}
{col 5}Not matched{col 30}{res}               0
{txt}{col 5}Matched{col 30}{res}          28,242{txt}  (_merge==3)
{col 5}{hline 41}

{com}. log close
      {txt}name:  {res}<unnamed>
       {txt}log:  {res}C:\Users\oalevesq\Downloads\merge how to.do
  {txt}log type:  {res}smcl
 {txt}closed on:  {res} 1 Dec 2025, 15:15:28
{txt}{.-}
{smcl}
{txt}{sf}{ul off}
