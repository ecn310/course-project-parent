 cd "C:\Users\akgilmar\Downloads\ATUS 2014 Data"
C:\Users\akgilmar\Downloads\ATUS 2014 Data

. import delimited "C:\Users\akgilmar\Downloads\ATUS 2014 Data\atusresp_2014
> \atusresp_2014.dat"
(encoding automatically selected: ISO-8859-1)
(175 vars, 11,592 obs)

. save atusresp_2014, replace
file atusresp_2014.dta saved

. clear

. import delimited "C:\Users\akgilmar\Downloads\ATUS 2014 Data\atusact_2014\
> atusact_2014.dat"
(encoding automatically selected: ISO-8859-1)
(29 vars, 223,249 obs)

. save atusact_2014, replace
(file atusact_2014.dta not found)
file atusact_2014.dta saved

. clear

. import delimited "C:\Users\akgilmar\Downloads\ATUS 2014 Data\atuswho_2014\
> atuswho_2014.dat"
(encoding automatically selected: ISO-8859-1)
(5 vars, 287,450 obs)

. save atuswho_2014, replace
(file atuswho_2014.dta not found)
file atuswho_2014.dta saved

. use atusact_2014, clear


. merge m:1 tucaseid using atusresp_2014

    Result                      Number of obs
    -----------------------------------------
    Not matched                             0
    Matched                           223,249  (_merge==3)
    -----------------------------------------

. merge 1:m tucaseid tuactivity_n using atuswho_2014

. save atus_2014_merged, replace
(file atus_2014_merged.dta not found)
file atus_2014_merged.dta saved

. label define labeltewhere -1 "Blank" -2 "Don't Know" -3 "Refused" 1 "Respondent's home or yard"
>  2 "Respondent's workplace" 3 "Someone else's home" 4 "Restaurant or bar" 5 "Place of worship" 
> 6 "Grocery store" 7 "Other store/mall" 8 "School" 9 "Outdoors away from home" 10 "Library" 11 "
> Other place" 12 "Car, truck, or motorcycle (driver)" 13 "Car, truck, or motorcycle (passenger)"
>  14 "Walking" 15 "Bus" 16 "Subway/train" 17 "Bicycle" 18 "Boat/ferry" 19 "Taxi/limousine servic
> e" 20 "Airplane" 21 "Other mode of transportation" 30 "Bank" 31 "Gym/health club" 32 "Post Offi
> ce" 89 "Unspecified place" 99 "Unspecified mode of transportation"

. label variable teabsrsn "Edited: what was the main reason you were absent from your job last we
> ek?"

. 
. label variable teern "Edited: total weekly overtime earnings (2 implied decimals)"

. 
. label variable teernh1o "Edited: excluding overtime pay, tips, and commissions, what is your ho
> urly rate of pay on your main job? (2 implied decimals)"
note: label truncated to 80 characters

. 
. label variable teernh2 "Edited: excluding overtime pay, tips, and commissions, what is your hou
> rly rate of pay on your main job? (2 implied decimals)"
note: label truncated to 80 characters

. 
. label variable teernhro "Edited: how many hours do you usually work per week at this rate?"

. 
. label variable teernhry "Edited: hourly/non-hourly status"

. 
. label variable teernper "Edited: for your main job, what is the easiest way for you to report y
> our total earnings before taxes or other deductions: hourl"
note: label truncated to 80 characters

. 
. label variable teernrt "Edited: even though you told me it is easier to report your earnings an
> other way, are you paid at an hourly rate on this job?"
note: label truncated to 80 characters

. 
. label variable teernuot "Edited: do you usually receive overtime pay, tips, or commissions at y
> our main job?"
note: label truncated to 80 characters

. 
. label variable teernwkp "Edited: how many weeks a year do you get paid?"
label variable tewhere "Edited: where were you during the activity?"
label variable trcode "Six digit activity code"
label variable trtcctot_ln "Total time spent during activity providing secondary childcare for all children < 13"
label variable trtcc_ln "Total time spent during activity providing secondary child care for household and own non-household children < 13"
label variable trtcoc_ln "Total time spent during activity providing secondary child care for non-own, non-household children <13"
label variable trtec_ln "Time (in minutes) spent providing eldercare by activity"
label variable trthh_ln "Total time spent during activity providing secondary childcare for household children < 13"
label variable trtier2 "First and second activity tiers"
label variable trtnohh_ln "Total time spent during activity providing secondary childcare for non-own household children < 13"
label variable trtohh_ln "Total time spent during activity providing secondary childcare for own household children < 13"
label variable trtonhh_ln "Total time spent during activity providing secondary childcare for own non-household children < 13"
label variable trto_ln "Total time spent during activity providing secondary childcare for own children < 13"
label variable tuactdur "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)"
label variable tuactdur24 "Duration of activity in minutes (last activity truncated at 4:00 a.m.)"
label variable tuactivity_n "Activity line number"
label variable tucaseid "ATUS Case ID (14-digit identifier)"
label variable tucc5 "Was at least one of your own household children < 13 in your care during this activity?"
label variable tucc5b "Was at least one of your non-own household children < 13 in your care during this activity?"
label variable tucc7 "Was at least one of your own non-household children < 13 in your care during this activity?"
label variable tucc8 "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?"
label variable tucumdur "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00am or 1440 minutes (cumulative total of T"
label variable tucumdur24 "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00am or 1440 minutes (cumulative total of TUACT"
label variable tuec24 "At which times or during which activities did you provide that care or assistance yesterday?"
label variable tustarttim "Activity start time"
label variable tustoptime "Activity stop time"
label variable tutier1code "Lexicon Tier 1: 1st and 2nd digits of 6-digit activity code"
label variable tutier2code "Lexicon Tier 2: 3rd and 4th digits of 6-digit activity code"
label variable tutier3code "Lexicon Tier 3: 5th and 6th digits of 6-digit activity code"
label variable txwhere "TEWHERE: allocation flag"


. 
. label variable tehrftpt "Edited: do you usually work more than 35 hours per week at your job(s)
> /family business?"
note: label truncated to 80 characters

. 
. label variable tehrusl1 "Edited: how many hours per week do you usually work at your main job?"

. 
. label variable tehrusl2 "Edited: how many hours per week do you usually work at your other job(
> s)?"

. 
. label variable tehruslt "Edited: total hours usually worked per week (sum of TEHRUSL1 and TEHRU
> SL2)"

. 
. label variable teio1cow "Edited: individual class of worker code (main job)"

. 
. label variable teio1icd "Edited: industry code (main job)"

. 
. label variable teio1ocd "Edited: occupation code (main job)"

. 
. label variable telayavl "Edited: could you have returned to work in the last seven days if you 
> had been recalled?"
note: label truncated to 80 characters

. 
. label variable telaylk "Edited: even though you expect to be called back to work, have you been
>  looking for work during the last four weeks?"
note: label truncated to 80 characters

. 
. label variable telfs "Edited: labor force status"

. 
. label variable telkavl "Edited: could you have started a job in the last seven days if one had 
> been offered?"
note: label truncated to 80 characters

. 
. label variable telkm1 "Edited: what are all of the things you have done to find work during the
>  last 4 weeks? (first method)"
note: label truncated to 80 characters

. 
. label variable temjot "Edited: in the last seven days did you have more than one job?"

. 
. label variable teret1 "Edited: do you currently want a job, either full or part time?"

. 
. label variable teschenr "Edited: are you enrolled in high school, college, or university?"

. 
. label variable teschft "Edited: are you enrolled as a full-time or part-time student?"

. 
. label variable teschlvl "Edited: would that be high school, college, or university?"

. 
. label variable tespempnot "Edited: employment status of spouse or unmarried partner"

. 
. label variable tespuhrs "Edited: usual hours of work of spouse or unmarried partner"

. 
. label variable trchildnum "Number of household children < 18"

. 
. label variable trdpftpt "Full time or part time employment status of respondent"

. 
. label variable trdtind1 "Detailed industry recode (main job)"

. 
. label variable trdtocc1 "Detailed occupation recode (main job)"

. 
. label variable trernhly "Hourly earnings at main job (2 implied decimals)"

. 
. label variable trernupd "Earnings update flag"

. 
. label variable trernwa "Weekly earnings at main job (2 implied decimals)"

. 
. label variable trhernal "TRERNHLY: allocation flag"

. 
. label variable trhhchild "Presence of household children < 18"

. 
. label variable trholiday "Flag to indicate if diary day was a holiday"

. 
. label variable trimind1 "Intermediate industry recode (main job)"

. 
. label variable trmjind1 "Major industry recode (main job)"

. 
. label variable trmjocc1 "Major occupation recode (main job)"

. 
. label variable trmjocgr "Major occupation category (main job)"

. 
. label variable trnhhchild "Presence of own non-household child < 18"

. 
. label variable trnumhou "Number of people living in respondent's household"

. 
. label variable trohhchild "Presence of own household children < 18"

. 
. label variable trspftpt "Full time or part time employment status of spouse or unmarried partne
> r"

. 
. label variable trsppres "Presence of the respondent's spouse or unmarried partner in the househ
> old"

. 
. label variable trtalone "Total nonwork-related time respondent spent alone (in minutes)"

. 
. label variable trtalone_wk "Total work- and nonwork-related time respondent spent alone (in min
> utes)"

. 
. label variable trtcc "Total time spent during diary day providing secondary childcare for house
> hold and own non-household children < 13"
note: label truncated to 80 characters

. 
. label variable trtccc "Total nonwork-related time respondent spent with customers, clients, and
>  coworkers (in minutes)"
note: label truncated to 80 characters

. 
. label variable trtccc_wk "Total work- and nonwork-related time respondent spent with customers,
>  clients, and coworkers (in minutes)"
note: label truncated to 80 characters

. 
. label variable trtcctot "Total time spent during diary day providing secondary childcare for al
> l children < 13"
note: label truncated to 80 characters

. 
. label variable trtchild "Total time respondent spent with household or non-household children <
>  18"

. 
. label variable trtcoc "Total time spent during diary day providing secondary childcare for non-
> own, non-household children < 13"
note: label truncated to 80 characters

. 
. label variable trtec "Total time spent providing eldercare (in minutes)"

. 
. label variable trtfamily "Total time respondent spent with family members"

. 
. label variable trtfriend "Total time respondent spent with friends"

. 
. label variable trthh "Total time spent during diary day providing secondary childcare for house
> hold children < 13"
note: label truncated to 80 characters

. 
. label variable trthhfamily "Total time respondent spent with household family members"

. 
. label variable trtnochild "Total time respondent spent with non-own children < 18"

. 
. label variable trtnohh "Total time spent during diary day providing secondary childcare for non
> -own household children < 13"
note: label truncated to 80 characters

. 
. label variable trto "Total time spent during diary day providing secondary childcare for own ch
> ildren < 13"
note: label truncated to 80 characters

. 
. label variable trtohh "Total time spent during diary day providing secondary childcare for own 
> household children < 13"
note: label truncated to 80 characters

. 
. label variable trtohhchild "Total time respondent spent with own household children < 18"

. 
. label variable trtonhh "Total time spent during diary day providing secondary childcare for own
>  non-household children < 13"
note: label truncated to 80 characters

. 
. label variable trtonhhchild "Total time respondent spent with own non-household children < 18"

. 
. label variable trtsponly "Total time respondent spent with spouse only"

. 
. label variable trtspouse "Total time respondent spent with spouse (others may be present)"

. 
. label variable trtunmpart "Total time respondent spent with unmarried partner (others may be pr
> esent)"

. 
. label variable tremodr "Eating and Health Module respondent"

. 
. label variable trwernal "TRERNWA: allocation flag"

. 
. label variable tryhhchild "Age of youngest household child < 18"

. 
. label variable tthr "Hourly pay topcode flag"

. 
. label variable ttot "Overtime amount topcode flag"

. 
. label variable ttwk "Weekly earnings topcode flag"

. 
. label variable tuabsot "In the last seven days, did you have a job either full or part time?"

. 
. label variable tubus "Does anyone in the household own a business or a farm?"

. 
. label variable tubus1 "In the last seven days, did you do any unpaid work in the family busines
> s or farm?"
note: label truncated to 80 characters

. 
. label variable tubus2ot "Do you receive payments or profits from the business?"

. 
. label variable tubusl1 "TULINENO of farm or business owner (first owner)"

. 
. label variable tubusl2 "TULINENO of farm or business owner (second owner)"

. 
. label variable tubusl3 "TULINENO of farm or business owner (third owner)"

. 
. label variable tubusl4 "TULINENO of farm or business owner (fourth owner)"

. 
. label variable tucaseid "ATUS Case ID (14-digit identifier)"

. 
. label variable tucc2 "Time first household child < 13 woke up"

. 
. label variable tucc4 "Time last household child < 13 went to bed"

. 
. label variable tucc5b_ck "Reason respondent did not report secondary childcare activities for n
> on-own household children"
note: label truncated to 80 characters

. 
. label variable tucc5_ck "Reason respondent did not report secondary childcare activities for ow
> n household children"
note: label truncated to 80 characters

. 
. label variable tucc9 "Are the non-own, non-household children you cared for in TUCC8 related to
>  you?"

. 
. label variable tudiarydate "Date of diary day (date about which the respondent was interviewed)
> "

. 
. label variable tudiaryday "Day of the week of diary day (day of the week about which the respon
> dent was interviewed)"
note: label truncated to 80 characters

. 
. label variable tudis "Last time we spoke to someone in this household you were reported to have
>  a disability. Does your disability prevent you from do"
note: label truncated to 80 characters

. 
. label variable tudis1 "Does your disability prevent you from accepting any kind of work during 
> the next six months?"
note: label truncated to 80 characters

. 
. label variable tudis2 "Do you have a disability that prevents you from accepting any kind of wo
> rk during the next six months?"
note: label truncated to 80 characters

. 
. label variable tuecytd "Did you provide any eldercare or assistance yesterday?"

. 
. label variable tuelder "Not including financial assistance or help you provided as part of your
>  paid job, since the first of [REF_MONTH], have you provided any care of assistance for an adul
> t who needed help because of a condition related to aging?"
note: label truncated to 80 characters

. 
. label variable tuelfreq "How often did you provide this care?"

. 
. label variable tuelnum "Since the first of [REF_MONTH], how many people have you provided this 
> care to?"

. 
. label variable tuern2 "Weekly overtime earnings (2 implied decimals)"

. 
. label variable tuernh1c "What is your hourly rate of pay on this job, excluding overtime pay, t
> ips, or commissions? (2 implied decimals)"
note: label truncated to 80 characters

. 
. label variable tufinlwgt "ATUS final weight"

. 
. label variable tufwk "In the last seven days did you do any work for pay or profit?"

. 
. label variable tuio1mfg "Is this business or organization mainly manufacturing, retail trade, w
> holesale trade, or something else? (main job)"
note: label truncated to 80 characters

. 
. label variable tuiodp1 "Last time we spoke to someone in this household, you were reported to w
> ork for (employer's name). Do you still work for (employe"
note: label truncated to 80 characters

. 
. label variable tuiodp2 "Have the usual activities and duties of your job changed since (month o
> f CPS interview)? (main job)"
note: label truncated to 80 characters

. 
. label variable tuiodp3 "Last time we spoke to someone in this household, you were reported as (
> occupation) and your usual duties were (activities). Is t"
note: label truncated to 80 characters

. 
. label variable tulay "During the last seven days were you on layoff from your job?"

. 
. label variable tulay6m "Have you been given any indication that you will be recalled to work wi
> thin the next 6 months?"
note: label truncated to 80 characters

. 
. label variable tulayavr "Why could you not have started a job in the last week?"

. 
. label variable tulaydt "Has your employer given you a date to return to work? (to layoff job)"

. 
. label variable tulineno "ATUS person line number"

. 
. label variable tulk "Have you been doing anything to find work during the last four weeks?"

. 
. label variable tulkavr "Why could you not have started a job last week?"

. 
. label variable tulkdk1 "You said you have been trying to find work. How did you go about lookin
> g? (first method)"
note: label truncated to 80 characters

. 
. label variable tulkdk2 "TULKDK1 text: (second method)"

. 
. label variable tulkdk3 "TULKDK1 text: (third method)"

. 
. label variable tulkdk4 "TULKDK1 text: (fourth method)"

. 
. label variable tulkdk5 "TULKDK1 text: (fifth method)"

. 
. label variable tulkdk6 "TULKDK1 text: (sixth method)"

. 
. label variable tulkm2 "What are all of the things you have done to find work during the last 4 
> weeks? (second method)"
note: label truncated to 80 characters

. 
. label variable tulkm3 "TULKM2 text: (third method)"

. 
. label variable tulkm4 "TULKM2 text: (fourth method)"

. 
. label variable tulkm5 "TULKM2 text: (fifth method)"

. 
. label variable tulkm6 "TULKM2 text: (sixth method)"

. 
. label variable tulkps1 "Can you tell me more about what you did to search for work? (first meth
> od)"

. 
. label variable tulkps2 "TULKPS1 text: (second method)"

. 
. label variable tulkps3 "TULKPS1 text: (third method)"

. 
. label variable tulkps4 "TULKPS1 text: (fourth method)"

. 
. label variable tulkps5 "TULKPS1 text: (fifth method)"

. 
. label variable tulkps6 "TULKPS1 text: (sixth method)"

. 
. label variable tumonth "Month of diary day (month of day about which ATUS respondent was interv
> iewed)"

. 
. label variable turetot "The last time we spoke to someone in this household you were reported t
> o be retired. Are you still retired?"
note: label truncated to 80 characters

. 
. label variable tuspabs "In the last seven days, did your spouse or unmarried partner have a job
>  either full or part time?"
note: label truncated to 80 characters

. 
. label variable tuspusft "Does your spouse or unmarried partner usually work 35 hours or more pe
> r week?"

. 
. label variable tuspwk "In the last seven days, did your spouse or unmarried partner do any work
>  for pay or profit?"
note: label truncated to 80 characters

. 
. label variable tuyear "Year of diary day (year of day about which respondent was interviewed)"

. 
. label variable txabsrsn "TEABSRSN: allocation flag"

. 
. label variable txern "TEERN: allocation flag"

. 
. label variable txernh1o "TEERNH1O: allocation flag"

. 
. label variable txernh2 "TEERNH2: allocation flag"

. 
. label variable txernhro "TEERNHRO: allocation flag"

. 
. label variable txernhry "TEERNHRY: allocation flag"

. 
. label variable txernper "TEERNPER: allocation flag"

. 
. label variable txernrt "TEERNRT: allocation flag"

. 
. label variable txernuot "TEERNUOT: allocation flag"

. 
. label variable txernwkp "TEERNWKP: allocation flag"

. 
. label variable txhrftpt "TEHRFTPT: allocation flag"

. 
. label variable txhrusl1 "TEHRUSL1: allocation flag"

. 
. label variable txhrusl2 "TEHRUSL2: allocation flag"

. 
. label variable txhruslt "TEHRUSLT: allocation flag"

. 
. label variable txio1cow "TEIO1COW: allocation flag"

. 
. label variable txio1icd "TEIO1ICD: allocation flag"

. 
. label variable txio1ocd "TEIO1OCD: allocation flag"

. 
. label variable txlayavl "TELAYAVL: allocation flag"

. 
. label variable txlaylk "TELAYLK: allocation flag"

. 
. label variable txlfs "TELFS: allocation flag"

. 
. label variable txlkavl "TELKAVL: allocation flag"

. 
. label variable txlkm1 "TELKM1: allocation flag"

. 
. label variable txmjot "TEMJOT: allocation flag"

. 
. label variable txret1 "TERET1: allocation flag"

. 
. label variable txschenr "TESCHENR: allocation flag"

. 
. label variable txschft "TESCHFT: allocation flag"

. 
. label variable txschlvl "TESCHLVL: allocation flag"

. 
. label variable txspempnot "TESPEMPNOT: allocation flag"

. 
. label variable txspuhrs "TESPUHRS: allocation flag"

. 
. label variable txtcc "TRTCC_LN and TRTCC: allocation flag"

. 
. label variable txtcctot "TRTCCTOT_LN and TRTCCTOT: allocation flag"

. 
. label variable txtcoc "TRTCOC_LN and TRTCOC: allocation flag"

. 
. label variable txthh "TRTHH_LN and TRTHH: allocation flag"

. 
. label variable txtnohh "TRTNOHH_LN and TRTNOHH: allocation flag"

. 
. label variable txto "TRTO_LN and TRTO: allocation flag"

. 
. label variable txtohh "TRTOHH_LN and TRTOHH: allocation flag"

. 
. label variable txtonhh "TRTONHH_LN and TRTONHH: allocation flag"
