** This .do is made for Stata version 18.0
**Fill in any file path with your own personal one from the downloaded data on github 

**Import ACSDT5Y2014.B19013-Data by File, Import, Text Data. Copy file path into file to import. Then click always in First Row as Variable names: 

*** Create statefips variable to match ATUS and TOA
gen statefips = .

*** Rename statefips to state 
replace statefips = 1  if name == "Alabama"
replace statefips = 2  if name == "Alaska"
replace statefips = 4  if name == "Arizona"
replace statefips = 5  if name == "Arkansas"
replace statefips = 6  if name == "California"
replace statefips = 8  if name == "Colorado"
replace statefips = 9  if name == "Connecticut"
replace statefips = 10 if name == "Delaware"
replace statefips = 11 if name == "District of Columbia"
replace statefips = 12 if name == "Florida"
replace statefips = 13 if name == "Georgia"
replace statefips = 15 if name == "Hawaii"
replace statefips = 16 if name == "Idaho"
replace statefips = 17 if name == "Illinois"
replace statefips = 18 if name == "Indiana"
replace statefips = 19 if name == "Iowa"
replace statefips = 20 if name == "Kansas"
replace statefips = 21 if name == "Kentucky"
replace statefips = 22 if name == "Louisiana"
replace statefips = 23 if name == "Maine"
replace statefips = 24 if name == "Maryland"
replace statefips = 25 if name == "Massachusetts"
replace statefips = 26 if name == "Michigan"
replace statefips = 27 if name == "Minnesota"
replace statefips = 28 if name == "Mississippi"
replace statefips = 29 if name == "Missouri"
replace statefips = 30 if name == "Montana"
replace statefips = 31 if name == "Nebraska"
replace statefips = 32 if name == "Nevada"
replace statefips = 33 if name == "New Hampshire"
replace statefips = 34 if name == "New Jersey"
replace statefips = 35 if name == "New Mexico"
replace statefips = 36 if name == "New York"
replace statefips = 37 if name == "North Carolina"
replace statefips = 38 if name == "North Dakota"
replace statefips = 39 if name == "Ohio"
replace statefips = 40 if name == "Oklahoma"
replace statefips = 41 if name == "Oregon"
replace statefips = 42 if name == "Pennsylvania"
replace statefips = 44 if name == "Rhode Island"
replace statefips = 45 if name == "South Carolina"
replace statefips = 46 if name == "South Dakota"
replace statefips = 47 if name == "Tennessee"
replace statefips = 48 if name == "Texas"
replace statefips = 49 if name == "Utah"
replace statefips = 50 if name == "Vermont"
replace statefips = 51 if name == "Virginia"
replace statefips = 53 if name == "Washington"
replace statefips = 54 if name == "West Virginia"
replace statefips = 55 if name == "Wisconsin"
replace statefips = 56 if name == "Wyoming"

***Get rid of unused variable
drop if name == "Geographic Area Name"

*** Change variable to what it means 
rename name statename

***Rename to median income 
rename b19013_001e medianinc
 
 *** Rename to margin of error 
  rename b19013_001m moe
 
*** Save as Updated data set with median income
 save "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Updated data set with median income.dta"
