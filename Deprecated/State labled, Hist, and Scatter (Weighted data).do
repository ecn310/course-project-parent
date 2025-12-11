* CHANGE ALL PATHS TO PERSONAL PATHS* 
** Open Log **
log using "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\-_-.log"

** Use (New Merged Dataset weighted by population (1).dta) from github**
use "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\New Merged Dataset weighted by population (1).dta" 

** To make hist for the varible perm25_popw **
hist perm25_popw, frequency xtitle("Income Rank at Age 24 (25th Percentile)")
graph export "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Income Rank at Age 24 (25th Percentile) (weighed) graph.png", as(png) name("Graph")

** To make hist for the varible perm75_popw **
hist perm75_popw , frequency xtitle("Income Rank at Age 24 (75th Percentile)")
graph export "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Income Rank at Age 24 (75th Percentile)(weighed) graph.png", as(png) name("Graph")


** Make scatter plot with parental time investments, childs income rank, and State lables for children born into the 25% income rank ** 
scatter trthh perm25_popw , mlabel( state_abbrev) title("Parental Investment vs Intergenerational Mobility") xtitle("Income Rank at Age 24 born in 25%( perm25_popw )") ytitle("Parental Investment (trthh)")
** Save the graph as png (or any preferred type)
graph export "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Parental In
> vestment vs Intergenerational Mobility 25.png", as(png) name("Graph")
file C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Parental Investment
    vs Intergenerational Mobility 25.png saved as PNG format

** Make scatter plot with parental time investments, childs income rank, and State lables for children born into the 75% income rank ** 
scatter trthh perm75_popw , mlabel( state_abbrev) title("Parental Investment vs Intergenerational Mobility") xtitle("Income Rank at Age 24 born in 75%( perm25_popw )") ytitle("Parental Investment (trthh)")
** Save the graph as png (or any preferred type)
 graph export "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Parental In
> vestment vs Intergenerational Mobility 75.png", as(png) name("Graph")
file C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Parental Investment
    vs Intergenerational Mobility 75.png saved as PNG format
	
** End log** 
log close

