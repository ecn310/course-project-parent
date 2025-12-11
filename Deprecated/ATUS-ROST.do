
**Import atusrost_2014.dat by using the file-import-Text Data(delimited), and use personal path to file
import delimited "C:\Users\akgilmar\Downloads\atusrost_2014_RAW (2)\atusrost_2014.dat"


** Lable the varibles
label variable teage "Edited: age"
label variable terrp "Edited: how is this person related to you?"
label variable tesex "Edited: sex"
label variable tucaseid "ATUS Case ID (14-digit identifier)"
label variable tulineno "ATUS person line number"
label variable txage "TEAGE: allocation flag"
label variable txrrp "TERRP: allocation flag"
label variable txsex "TESEX: allocation flag"

** Save to own computer to prepare for merging the  ATUS datasets 
save "C:\Users\akgilmar\Downloads\AtusROST_2014_.dta"
