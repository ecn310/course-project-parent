** Use "Merged,Weighed,Labled.dta" 
use "Merged,Weighed,Labled.dta" 

** To make hist for the varible perm25_popw **
hist perm25_popw, frequency xtitle("Income Rank at Age 24 (25th Percentile)")
graph export "Income Rank at Age 24 (25th Percentile) (weighed) graph.png", as(png) name("Graph")

** To make hist for the varible perm75_popw **
hist perm75_popw , frequency xtitle("Income Rank at Age 24 (75th Percentile)")
graph export "Income Rank at Age 24 (75th Percentile)(weighed) graph.png", as(png) name("Graph")

** This adds a varible that lables the state fips codes into there State letter abbreviation **
gen state_abbrev = ""
replace state_abbrev = "AL" if statefips == 1
replace state_abbrev = "AK" if statefips == 2
replace state_abbrev = "AZ" if statefips == 4
replace state_abbrev = "AR" if statefips == 5
replace state_abbrev = "CA" if statefips == 6
replace state_abbrev = "CO" if statefips == 8
replace state_abbrev = "CT" if statefips == 9
replace state_abbrev = "DE" if statefips == 10
replace state_abbrev = "FL" if statefips == 12
replace state_abbrev = "GA" if statefips == 13
replace state_abbrev = "HI" if statefips == 15
replace state_abbrev = "ID" if statefips == 16
replace state_abbrev = "IL" if statefips == 17
replace state_abbrev = "IN" if statefips == 18
replace state_abbrev = "IA" if statefips == 19
replace state_abbrev = "KS" if statefips == 20
replace state_abbrev = "KY" if statefips == 21
replace state_abbrev = "LA" if statefips == 22
replace state_abbrev = "ME" if statefips == 23
replace state_abbrev = "MD" if statefips == 24
replace state_abbrev = "MA" if statefips == 25
replace state_abbrev = "MI" if statefips == 26
replace state_abbrev = "MN" if statefips == 27
replace state_abbrev = "MS" if statefips == 28
replace state_abbrev = "MO" if statefips == 29
replace state_abbrev = "MT" if statefips == 30
replace state_abbrev = "NE" if statefips == 31
replace state_abbrev = "NV" if statefips == 32
replace state_abbrev = "NH" if statefips == 33
replace state_abbrev = "NJ" if statefips == 34
replace state_abbrev = "NM" if statefips == 35
replace state_abbrev = "NY" if statefips == 36
replace state_abbrev = "NC" if statefips == 37
replace state_abbrev = "ND" if statefips == 38
replace state_abbrev = "OH" if statefips == 39
replace state_abbrev = "OK" if statefips == 40
replace state_abbrev = "OR" if statefips == 41
replace state_abbrev = "PA" if statefips == 42
replace state_abbrev = "RI" if statefips == 44
replace state_abbrev = "SC" if statefips == 45
replace state_abbrev = "SD" if statefips == 46
replace state_abbrev = "TN" if statefips == 47
replace state_abbrev = "TX" if statefips == 48
replace state_abbrev = "UT" if statefips == 49
replace state_abbrev = "VT" if statefips == 50
replace state_abbrev = "VA" if statefips == 51
replace state_abbrev = "WA" if statefips == 53
replace state_abbrev = "WV" if statefips == 54
replace state_abbrev = "WI" if statefips == 55
replace state_abbrev = "WY" if statefips == 56

** Make scatter plot with parental time investments, childs income rank, and State lables for children born into the 25% income rank ** 
scatter trthh perm25_popw , mlabel( state_abbrev) title("Parental Investment vs Intergenerational Mobility") xtitle("Income Rank at Age 24 born in 25%") ytitle("Parental Investment (trthh)") xscale(range(20 60))

** Save the graph as png (or any preferred type)
graph export "25novar.png", as(png) name("Graph")


** Make scatter plot with parental time investments, childs income rank, and State lables for children born into the 75% income rank ** 
scatter trthh perm75_popw , mlabel( state_abbrev) title("Parental Investment vs Intergenerational Mobility") xtitle("Income Rank at Age 24 born in 75%") ytitle("Parental Investment ") xscale(range(20 60))
** Save the graph as png (or any preferred type)
 graph export "75novar.png", as(png) name("Graph")
	

