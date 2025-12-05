** This .do is made for Stata version 18.0
**Fill in any file path with your own personal one from the downloaded data on github 

*ATUS DATA START 

** Import atuscps_2014.dat by using the file-import-Text Data(delimited)
use "C:\Users\akgilmar\Downloads\atuscps_2014_RAW (1)\atuscps_2014.dat"
import delimited "C:\Users\akgilmar\Downloads\atuscps_2014_RAW (1)\atuscps_2014.dat"

** This lables all the varibles from the data set
label variable gepseucl "Scrambled pseudo primary sampling unit (PSU) cluster"
label variable gepseust "Scrambled pseudo primary sampling unit (PSU) collapsed stratum"
label variable gereg "Region"
label variable gediv "Division"
label variable gestfips "Federal Processing Information Standards (FIPS) state code"
label variable gtmetsta "Metropolitan status (2000 definitions)"
label variable hefaminc "Edited: Family Income"
label variable hehousut "Edited: type of housing unit"
label variable hephoneo "Edited: is a telephone interview acceptable?"
label variable hetelavl "Edited: is there a telephone elsewhere on which people in this household can be contacted?"
label variable hetelhhd "Edited: is there a telephone in this house/apartment?"
label variable hetenure "Edited: are your living quarters owned, rented for cash, or occupied without payment of cash rent?"
label variable hrhhid "Household ID (15-digit identifier)"
label variable hrhhid2 "Household ID part 2 (5-digit identifier)"
label variable hrhtype "Household type"
label variable hrintsta "Interview status"
label variable hrlonglk "Longitudinal link indicator"
label variable hrmis "Month in sample"
label variable hrmonth "Month of interview"
label variable hrnumhou "Total number of persons in the household (household members)"
label variable hryear4 "Year of interview"
label variable hubus "Does anyone in this household have a business or a farm?"
label variable hubusl1 "PULINENO of farm or business owner (first owner)"
label variable hubusl2 "PULINENO of farm or business owner (second owner)"
label variable hubusl3 "PULINENO of farm or business owner (third owner)"
label variable hubusl4 "PULINENO of farm or business owner (fourth owner)"
label variable hufinal "Final outcome code"
label variable huinttyp "Type of interview"
label variable huprscnt "Number of actual and attempted personal contacts"
label variable hurespli "PULINENO of the current respondent"
label variable hutypb "Type B non-interview categories"
label variable hutypc "Type C non-interview categories"
label variable hutypea "Type A non-interview categories"
label variable hxfaminc "HEFAMINC: allocation flag"
label variable hxhousut "HEHOUSUT: allocation flag"
label variable hxphoneo "HEPHONEO: allocation flag"
label variable hxtelavl "HETELAVL: allocation flag"
label variable hxtelhhd "HETELHHD: allocation flag"
label variable hxtenure "HETENURE: allocation flag"
label variable occurnum "Unique person identifier"
label variable peabspdo "Edited: are you being paid by your employer for any of the time off last week?"
label variable peabsrsn "Edited: what was the main reason you were absent from work last week?"
label variable peafever "Edited: did you ever serve on active duty in the U.S. Armed Forces?"
label variable peafnow "Edited: are you now in the Armed Forces?"
label variable peafwhn1 "Edited: when did you serve in the Armed Forces? (first period)"
label variable peafwhn2 "Edited: when did you serve in the Armed Forces? (second period)"
label variable peafwhn3 "Edited: when did you serve in the Armed Forces? (third period)"
label variable peafwhn4 "Edited: when did you serve in the Armed Forces? (fourth period)"
label variable pecohab "Edited: PULINENO of cohabiting partner"
label variable pecyc "Edited: how many years of college credit have you completed?"
label variable pedadtyp "Edited: Is household child a biological, step or adopted child?"
label variable pedipged "Edited: how did you get your high school diploma?"
label variable pedisdrs "Edited: Does this person have difficulty dressing or bathing?"
label variable pedisear "Edited: Is this person deaf or does this person have serious difficulty hearing?"
label variable pediseye "Edited: Is this person blind or does this person have serious difficulty seeing even when wearing glasses?"
label variable pedisout "Edited: Because of a physical, mental, or emotional condition does this person have difficulty doing errands alone such as visiting a doctor's office or shopping?"
label variable pedisphy "Edited: Does this person have serious difficulty walking or climbing stairs?"
label variable pedisrem "Edited: Because of a physical, mental, or emotional condition, does this person have serious difficulty concentrating, remembering, or making decisions?"
label variable pedw4wk "Edited: did you do any of this work during the last 4 weeks?"
label variable pedwavl "Edited: last week, could you have started a job if one had been offered?"
label variable pedwavr "Edited: why could you not have started a job if one had been offered last week?"
label variable pedwlko "Edited: did you look for work any time in the last 12 months?"
label variable pedwlkwk "Edited: and since you left that job or business have you looked for work?"
label variable pedwrsn "Edited: what is the main reason you were not looking for work during the last 4 weeks?"
label variable pedwwk "Edited: did you actually work at a job or business during the last 12 months?"
label variable pedwwnto "Edited: do you currently want a job, either full or part time?"
label variable peeduca "Edited: what is the highest level of school you have completed or the highest degree you have received?"
label variable peern "Edited: total weekly overtime earnings (2 implied decimals)"
label variable peerncov "Edited: on this job, are you covered by a union or employee association contract?"
label variable peernh1o "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
label variable peernh2 "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)"
label variable peernhro "Edited: how many hours do you usually work per week at this rate?"
label variable peernhry "Edited: hourly/non-hourly status"
label variable peernlab "Edited: on this job, are you a member of a labor union or of an employee association similar to a union?"
label variable peernper "Edited: for your main job, what is the easiest way for you to report your total earnings before taxes or other deductions: hourl"
label variable peernrt "Edited: even though you told me it is easier to report your earnings another way, are you paid at an hourly rate on your main jo"
label variable peernuot "Edited: do you usually receive overtime pay, tips, or commissions at your job?"
label variable peernwkp "Edited: how many weeks a year do you get paid?"
label variable pefntvty "Edited: in what country was your father born?"
label variable pegr6cor "Edited: did you complete six or more graduate or professional school courses?"
label variable pegrprof "Edited: since completing your bachelor's degree, have you taken any graduate or professional school courses for credit?"
label variable pehgcomp "Edited: what was the highest grade of regular school you completed before receiving your GED?"
label variable pehract1 "Edited: last week, how many hours did you actually work at your main job?"
label variable pehract2 "Edited: last week, how many hours did you actually work at your other job(s)?"
label variable pehractt "Edited: total hours actually worked last week (sum of PEHRACT1 and PEHRACT2)"
label variable pehravl "Edited: last week, could you have worked full time if the hours had been available?"
label variable pehrftpt "Edited: do you usually work more than 35 hours per week at your job(s)/family business?"
label variable pehrrsn1 "Edited: what is your main reason for working part time?"
label variable pehrrsn2 "Edited: what is the main reason you do not want to work full time?"
label variable pehrrsn3 "Edited: what is the main reason you worked less than 35 hours last week?"
label variable pehrusl1 "Edited: how many hours per week do you usually work at your main job?"
label variable pehrusl2 "Edited: how many hours per week do you usually work at your other job(s)?"
label variable pehruslt "Edited: total hours usually worked per week (sum of PEHRUSL1 and PEHRUSL2)"
label variable pehrwant "Edited: do you want to work a full time work week of 35 hours or more per week?"
label variable pehspnon "Edited: are you Spanish, Hispanic, or Latino?"
label variable peio1cow "Edited: individual class of worker (main job)"
label variable peio1icd "Edited: industry code (main job)"
label variable peio1ocd "Edited: occupation code (main job)"
label variable peio2cow "Edited: individual class of worker (second job)"
label variable peio2icd "Edited: industry code (second job)"
label variable peio2ocd "Edited: occupation code (second job)"
label variable pejhrsn "Edited: what is the main reason you left your last job?"
label variable pejhwant "Edited: do you intend to look for work during the next 12 months?"
label variable pejhwko "Edited: have you worked at a job or business at any time in the last 12 months?"
label variable pelayavl "Edited: could you have returned to work during the last seven days if you had been recalled?"
label variable pelaydur "Edited: duration of layoff (number of weeks)"
label variable pelayfto "Edited: is the job from which you are on layoff a full time job of 35 hours or more per week?"
label variable pelaylk "Edited: even though you are to be called back to work, have you been looking for work during the last 4 weeks?"
label variable pelkavl "Edited: could you have started a job in the last seven days if one had been offered?"
label variable pelkdur "Edited: duration of job seeking (number of weeks)"
label variable pelkfto "Edited: are you seeking a full time or part time job?"
label variable pelkll1o "Edited: before you started looking for work, what were you doing: working, going to school, or something else?"
label variable pelkll2o "Edited: did you lose or quit that job, or was it a temporary job that ended?"
label variable pelklwo "Edited: when did you last work?"
label variable pelkm1 "Edited: what are all of the things you have done to find work during the last 4 weeks? (first method)"
label variable pelndad "Edited: PULINENO of father"
label variable pelnmom "Edited: PULINENO of mother"
label variable pemaritl "Edited: are you now married, widowed, divorced, separated, or never married?"
label variable pemjnum "Edited: altogether, how many jobs did you have?"
label variable pemjot "Edited: in the last seven days, did you have more than one job?"
label variable pemlr "Edited: monthly labor force recode"
label variable pemntvty "Edited: in what country was your mother born?"
label variable pemomtyp "Edited: Is household child a biological, step, or adopted child?"
label variable pems123 "Edited: was your master's degree program a one-year, two-year, or three-year program?"
label variable penatvty "Edited: in what country were you born?"
label variable penlfact "Edited: what best describes your situation at this time? For example, are you disabled, ill, in school, taking care of house or"
label variable penlfjh "Edited: when did you last work at a job or business?"
label variable penlfret "Edited: are you retired from a job or business?"
label variable peparent "Edited: PULINENO of parent"
label variable peret1 "Edited: do you currently want a job, either full or part time?"
label variable perrp "Edited: how is this person related to you?"
label variable peschenr "Edited: last week, were you enrolled in a high school, college, or university?"
label variable peschft "Edited: are you enrolled in school as a full-time or part-time student?"
label variable peschlvl "Edited: would that be high school, college, or university?"
label variable pesex "Edited: sex"
label variable pespouse "Edited: PULINENO of spouse"
label variable prabsrea "Reason not at work by pay status"
label variable pragna "Agricultural/non-agricultural industry"
label variable prcitflg "PRCITSHP: allocation flag"
label variable prcitshp "Citizenship status"
label variable prcivlf "Civilian labor force"
label variable prcow1 "Class of worker recode (main job)"
label variable prcow2 "Class of worker recode (second job)"
label variable prcowpg "Class of worker - private or government"
label variable prdisc "Discouraged worker recode"
label variable prdisflg "Does this person have any of these disability conditions?"
label variable prdtcow1 "Detailed class of worker recode (main job)"
label variable prdtcow2 "Detailed class of worker recode (second job)"
label variable prdthsp "Detailed Hispanic origin group"
label variable prdtind1 "Detailed industry recode (main job)"
label variable prdtind2 "Detailed industry recode (second job)"
label variable prdtocc1 "Detailed occupation recode (main job)"
label variable prdtocc2 "Detailed occupation recode (second job)"
label variable premp "Employed persons recode"
label variable premphrs "Reason not at work or hours at work"
label variable prempnot "Employed, unemployed, or not in the labor force"
label variable prerelg "Earnings edit eligibility flag"
label variable prernhly "Hourly earnings at main job (2 implied decimals)"
label variable prernwa "Weekly earnings at main job (2 implied decimals)"
label variable prexplf "Experienced labor force employment"
label variable prfamnum "Family number recode"
label variable prfamrel "Family relationship code"
label variable prfamtyp "Family type recode"
label variable prftlf "Full time labor force"
label variable prhernal "PRERNHLY: allocation flag"
label variable prhrusl "Usual hours worked weekly"
label variable primind1 "Intermediate industry recode (main job)"
label variable primind2 "Intermediate industry recode (second job)"
label variable prinuyer "Immigrant's year of entry into the U.S."
label variable prioelg "Industry and occupation edit eligibility flag"
label variable prjobsea "Job search recode"
label variable prmarsta "Marital status based on Armed Forces participation"
label variable prmjind1 "Major industry recode (main job)"
label variable prmjind2 "Major industry recode (second job)"
label variable prmjocc1 "Major occupation recode (main job)"
label variable prmjocc2 "Major occupation recode (second job)"
label variable prmjocgr "Major occupation categories (main job)"
label variable prnagpws "Non-agricultural private wage and salary workers recode"
label variable prnagws "Non-agricultural wage and salary workers recode"
label variable prnlfsch "Not in labor force activity - in school or not in school"
label variable prnmchld "Number of own children < 18 years of age"
label variable prpertyp "Type of person recode"
label variable prpthrs "At work 1-34 hours by hours at work"
label variable prptrea "Detailed reason for part time work"
label variable prsjmj "Single/multiple jobholder"
label variable prtage "Age"
label variable prtfage "Topcode for age (PRTAGE)"
label variable prunedur "Duration of unemployment (number of weeks)"
label variable pruntype "Reason for unemployment"
label variable prwernal "PRERNWA: allocation flag"
label variable prwksch "Labor force by time worked or lost"
label variable prwkstat "Full time or part time work status"
label variable prwntjob "Not in labor force recode - want a job or other not in labor force"
label variable ptdtrace "Race (topcoded)"
label variable pthr "Hourly pay topcode flag"
label variable ptot "Weekly overtime amount topcode flag"
label variable ptwk "Weekly earnings topcode flag"
label variable puabsot "In the last seven days, did you have a job either full or part time?"
label variable pubus1 "Last week, did you do any unpaid work in the family business or farm?"
label variable pubus2ot "Do you receive any payments or profits from the business?"
label variable pubusck1 "Business check item 1: filter for questions on unpaid work"
label variable pubusck2 "Business check item 2: skips owners of family business who did not work last week"
label variable pubusck3 "Business check item 3: filter for disabled"
label variable pubusck4 "Business check item 4: filter for retired"
label variable puchinhh "Change in household composition"
label variable pudis "Last time we spoke to someone in this household, you were reported to have a disability. Does your disability continue to preven"
label variable pudis1 "Does your disability prevent you from accepting any kind of work during the next six months?"
label variable pudis2 "Do you have a disability that prevents you from accepting any kind of work during the next six months?"
label variable pudwck1 "Discouraged worker check item 1: filter for discouraged worker"
label variable pudwck2 "Discouraged worker check item 2: filter for disabled"
label variable pudwck3 "Discouraged worker check item 3: filter for retired"
label variable pudwck4 "Discouraged worker check item 4: filter for passive job seekers"
label variable pudwck5 "Discouraged worker check item 5: filter for passive job seekers"
label variable puern2 "Weekly overtime earnings (2 implied decimals)"
label variable puernh1c "What is your hourly rate of pay on this job, excluding overtime pay, tips, or commissions? (2 implied decimals)"
label variable puhrck1 "Hours respondent check item 1: labor force - remove groups from actual hours series"
label variable puhrck12 "Hours respondent check item 12: filter for < 15 hours to go to looking series"
label variable puhrck2 "Hours respondent check item 2: labor force - skips persons responding yes to PUHRFTPT out of PT series"
label variable puhrck3 "Hours respondent check item 3: labor force - filter for persons going through industry and occupation series"
label variable puhrck4 "Hours respondent check item 4: labor force - skips persons"
label variable puhrck5 "Hours respondent check item 5: labor force - filter for multiple jobholders for second job hours"
label variable puhrck6 "Hours respondent check item 6: labor force - filter for actual job hours, jobs 1 and 2"
label variable puhrck7 "Hours respondent check item 7: labor force - filter for hours worked paths"
label variable puhroff1 "Last week, did you lose or take off any hours from your job for any reason such as illness, slack work, vacation, or holiday?"
label variable puhroff2 "How many hours did you take off?"
label variable puhrot1 "Last week, did you work any overtime or extra hours? (main job)"
label variable puhrot2 "How many additional hours did you work?"
label variable puio1mfg "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (main job)"
label variable puio2mfg "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (second job)"
label variable puiock1 "Industry and occupation check item 1: filter for dependent industry and occupation"
label variable puiock2 "Industry and occupation check item 2: filter for previous month's industry and occupation cases"
label variable puiock3 "Industry and occupation check item 3: filter for previous month's unknown occupation"
label variable puiodp1 "Last month you were reported to work for (employer's name). Do you still work for (employer's name)?"
label variable puiodp2 "Have the usual activities and duties of your job changed since last month?"
label variable puiodp3 "Last time you were reported as (occupation) and your usual duties were (activities). Is this an accurate description of your cur"
label variable pujhck1 "Job history check item 1: filter for outgoing rotations"
label variable pujhck2 "Job history check item 2: filter for persons going through industry and occupation series"
label variable pujhck3 "Job history check item 3: filter for unemployed job history"
label variable pujhck4 "Job history check item 4: filter for dependent not in the labor force"
label variable pujhck5 "Job history check item 5: filter/carryover for dependent not in the labor force"
label variable pujhdp1o "Did you do any of this work in the last 4 weeks?"
label variable pulay "During the last seven days, were you on layoff from a job?"
label variable pulay6m "Have you been given any indication that you will be recalled to work within the next 6 months?"
label variable pulayavr "Why could you not have started a job in the last week?"
label variable pulayck1 "Layoff check item 1: filter for previous month layoff status"
label variable pulayck2 "Layoff check item 2: filter for dependent layoff"
label variable pulayck3 "Layoff check item 3: dependent industry and occupation filter/carryover"
label variable pulaydt "Has your employer given you a date to return to work? (to layoff job)"
label variable pulineno "Person line number"
label variable pulk "Have you been doing anything to find work during the last 4 weeks?"
label variable pulkavr "Why could you not have started a job last week?"
label variable pulkdk1 "You said you have been trying to find work. How did you go about looking? (first method)"
label variable pulkdk2 "PULKDK1 text: (second method)"
label variable pulkdk3 "PULKDK1 text: (third method)"
label variable pulkdk4 "PULKDK1 text: (fourth method)"
label variable pulkdk5 "PULKDK1 text: (fifth method)"
label variable pulkdk6 "PULKDK1 text: (sixth method)"
label variable pulkm2 "What are all of the things you have been doing to find work during the last 4 weeks? (second method)"
label variable pulkm3 "PULKM2 text: (third method)"
label variable pulkm4 "PULKM2 text: (fourth method)"
label variable pulkm5 "PULKM2 text: (fifth method)"
label variable pulkm6 "PULKM2 text: (sixth method)"
label variable pulkps1 "Can you tell me more about what you did to search for work? (first method)"
label variable pulkps2 "PULKPS1 text: (second method)"
label variable pulkps3 "PULKPS1 text: (third method)"
label variable pulkps4 "PULKPS1 text: (fourth method)"
label variable pulkps5 "PULKPS1 text: (fifth method)"
label variable pulkps6 "PULKPS1 text: (sixth method)"
label variable punlfck1 "Not in labor force check item 1: age filter for retirement question"
label variable punlfck2 "Not in labor force check item 2: outgoing rotation filter"
label variable puretot "Last month you were reported to be retired. Are you still retired?"
label variable puslfprx "Labor force information collected by self or proxy response"
label variable puwk "Last week, did you do any work for either pay or profit?"
label variable pxabspdo "PEABSPDO: allocation flag"
label variable pxabsrsn "PEABSRSN: allocation flag"
label variable pxafever "PEAFEVER: allocation flag"
label variable pxafnow "PEAFNOW: allocation flag"
label variable pxafwhn1 "PEAFWHN1: allocation flag"
label variable pxage "PRTAGE: allocation flag"
label variable pxcohab "PECOHAB: allocation flag"
label variable pxcyc "PECYC: allocation flag"
label variable pxdadtyp "PEDADTYP: allocation flag"
label variable pxdipged "PEDIPGED: allocation flag"
label variable pxdisdrs "PEDISDRS: allocation flag"
label variable pxdisear "PEDISEAR: allocation flag"
label variable pxdiseye "PEDISEYE: allocation flag"
label variable pxdisout "PEDISOUT: allocation flag"
label variable pxdisphy "PEDISPHY: allocation flag"
label variable pxdisrem "PEDISREM: allocation flag"
label variable pxdw4wk "PEDW4WK: allocation flag"
label variable pxdwavl "PEDWAVL: allocation flag"
label variable pxdwavr "PEDWAVR: allocation flag"
label variable pxdwlko "PEDWLKO: allocation flag"
label variable pxdwlkwk "PEDWLKWK: allocation flag"
label variable pxdwrsn "PEDWRSN: allocation flag"
label variable pxdwwk "PEDWWK: allocation flag"
label variable pxdwwnto "PEDWWNTO: allocation flag"
label variable pxeduca "PEEDUCA: allocation flag"
label variable pxern "PEERN: allocation flag"
label variable pxerncov "PEERNCOV: allocation flag"
label variable pxernh1o "PEERNH1O: allocation flag"
label variable pxernh2 "PEERNH2: allocation flag"
label variable pxernhro "PEERNHRO: allocation flag"
label variable pxernhry "PEERNHRY: allocation flag"
label variable pxernlab "PEERNLAB: allocation flag"
label variable pxernper "PEERNPER: allocation flag"
label variable pxernrt "PEERNRT: allocation flag"
label variable pxernuot "PEERNUOT: allocation flag"
label variable pxernwkp "PEERNWKP: allocation flag"
label variable pxfntvty "PEFNTVTY: allocation flag"
label variable pxgr6cor "PEGR6COR: allocation flag"
label variable pxgrprof "PEGRPROF: allocation flag"
label variable pxhgcomp "PEHGCOMP: allocation flag"
label variable pxhract1 "PEHRACT1: allocation flag"
label variable pxhract2 "PEHRACT2: allocation flag"
label variable pxhractt "PEHRACTT: allocation flag"
label variable pxhravl "PEHRAVL: allocation flag"
label variable pxhrftpt "PEHRFTPT: allocation flag"
label variable pxhrrsn1 "PEHRRSN1: allocation flag"
label variable pxhrrsn2 "PEHRRSN2: allocation flag"
label variable pxhrrsn3 "PEHRRSN3: allocation flag"
label variable pxhrusl1 "PEHRUSL1: allocation flag"
label variable pxhrusl2 "PEHRUSL2: allocation flag"
label variable pxhruslt "PEHRUSLT: allocation flag"
label variable pxhrwant "PEHRWANT: allocation flag"
label variable pxhspnon "PEHSPNON: allocation flag"
label variable pxinusyr "PRINUYER: allocation flag"
label variable pxio1cow "PEIO1COW: allocation flag"
label variable pxio1icd "PEIO1ICD: allocation flag"
label variable pxio1ocd "PEIO1OCD: allocation flag"
label variable pxio2cow "PEIO2COW: allocation flag"
label variable pxio2icd "PEIO2ICD: allocation flag"
label variable pxio2ocd "PEIO2OCD: allocation flag"
label variable pxjhrsn "PEJHRSN: allocation flag"
label variable pxjhwant "PEJHWANT: allocation flag"
label variable pxjhwko "PEJHWKO: allocation flag"
label variable pxlayavl "PELAYAVL: allocation flag"
label variable pxlaydur "PELAYDUR: allocation flag"
label variable pxlayfto "PELAYFTO: allocation flag"
label variable pxlaylk "PELAYLK: allocation flag"
label variable pxlkavl "PELKAVL: allocation flag"
label variable pxlkdur "PELKDUR: allocation flag"
label variable pxlkfto "PELKFTO: allocation flag"
label variable pxlkll1o "PELKLL1O: allocation flag"
label variable pxlkll2o "PELKLL2O: allocation flag"
label variable pxlklwo "PELKLWO: allocation flag"
label variable pxlkm1 "PELKM1: allocation flag"
label variable pxlndad "PELNDAD: allocation flag"
label variable pxlnmom "PELNMOM: allocation flag"
label variable pxmaritl "PEMARITL: allocation flag"
label variable pxmjnum "PEMJNUM: allocation flag"
label variable pxmjot "PEMJOT: allocation flag"
label variable pxmlr "PEMLR: allocation flag"
label variable pxmntvty "PEMNTVTY: allocation flag"
label variable pxmomtyp "PEMOMTYP: allocation flag"
label variable pxms123 "PEMS123: allocation flag"
label variable pxnatvty "PENATVTY: allocation flag"
label variable pxnlfact "PENLFACT: allocation flag"
label variable pxnlfjh "PENLFJH: allocation flag"
label variable pxnlfret "PENLFRET: allocation flag"
label variable pxparent "PEPARENT: allocation flag"
label variable pxrace1 "PTDTRACE: allocation flag"
label variable pxret1 "PERET1: allocation flag"
label variable pxrrp "PERRP: allocation flag"
label variable pxschenr "PESCHENR: allocation flag"
label variable pxschft "PESCHFT: allocation flag"
label variable pxschlvl "PESCHLVL: allocation flag"
label variable pxsex "PESEX: allocation flag"
label variable pxspouse "PESPOUSE: allocation flag"
label variable qstnum "Unique household identifier"
label variable tratusr "ATUS respondent"
label variable tucaseid "ATUS Case ID (14-digit identifier)"
label variable tulineno "ATUS person line number"
label variable prdasian "Detailed Asian race recode"
label variable pepdemp1 "Does this person usually have any paid employees?"
label variable ptnmemp1 "Excluding all owners, how many paid employees does this person usually have?"
label variable pepdemp2 "Does this person usually have any paid employees?"
label variable ptnmemp2 "Excluding all owners, how many paid employees does this person usually have?"
label variable pxpdemp1 "PEPDEMP1: allocation flag"
label variable pxnmemp1 "PTNMEMP1: allocation flag"
label variable pxpdemp2 "PEPDEMP2: allocation flag"
label variable pxnmemp2 "PTNMEMP2: allocation flag"

** Save to own computer to prepare for mergeing the 2 ATUS datasets 
save "C:\Users\akgilmar\Downloads\AtusCPS_2014_.dta"

**Clear and upload atussum_2014.dta

clear
use "C:\Users\akgilmar\Downloads\atussum_2014_.dta"

**Import atussum_2014.dat by using the file-import-Text Data(delimited), and use personal path to file
import delimited "C:\Users\akgilmar\Downloads\atussum_2014_RAW\atussum_2014.dat"

** Lable the varibles
label variable tucaseid   "ATUS Case ID (14-digit identifier)"
label variable gtmetsta   "Metropolitan status (2000 definitions)"
label variable peeduca    "Edited: what is the highest level of school you have completed or the highest degree you have received?"
label variable pehspnon   "Edited: are you Spanish, Hispanic, or Latino?"
label variable ptdtrace   "Race (topcoded)"
label variable teage      "Edited: age"
label variable tehruslt   "Edited: total hours usually worked per week (sum of TEHRUSL1 and TEHRUSL2)"
label variable telfs      "Edited: labor force status"
label variable temjot     "Edited: in the last seven days did you have more than one job?"
label variable teschenr   "Edited: are you enrolled in high school, college, or university?"
label variable teschlvl   "Edited: would that be high school, college, or university?"
label variable tesex      "Edited: sex"
label variable tespempnot "Edited: employment status of spouse or unmarried partner"
label variable trchildnum "Number of household children < 18"
label variable trdpftpt   "Full time or part time employment status of respondent"
label variable trernwa    "Weekly earnings (2 implied decimals)"
label variable trspftpt   "Full time or part time employment status of spouse or unmarried partner"
label variable trsppres   "Presence of the respondent's spouse or unmarried partner in the household"
label variable tryhhchild "Age of youngest household child < 18"
label variable tufinlwgt  "ATUS final weight"
label variable tudiaryday "Day of the week of diary day (day of the week about which the respondent was interviewed)"
label variable trholiday  "Flag to indicate if diary day was a holiday"
label variable trtec      "Total time spent providing eldercare (in minutes)"
label variable trthh      "Total time spent during diary day providing secondary childcare for household children < 13 (in minutes)"

label variable t010101 "Sleeping"
label variable t010102 "Sleeplessness"
label variable t010201 "Washing, dressing and grooming oneself"
label variable t010299 "Grooming, n.e.c.*"
label variable t010301 "Health-related self care"
label variable t010399 "Self care, n.e.c.*"
label variable t010401 "Personal/Private activities"
label variable t010501 "Personal emergencies"
label variable t019999 "Personal care, n.e.c.*"
label variable t020101 "Interior cleaning"
label variable t020102 "Laundry"
label variable t020103 "Sewing, repairing, and maintaining textiles"
label variable t020104 "Storing interior hh items, inc. food"
label variable t020199 "Housework, n.e.c.*"
label variable t020201 "Food and drink preparation"
label variable t020202 "Food presentation"
label variable t020203 "Kitchen and food clean-up"
label variable t020301 "Interior arrangement, decoration, and repairs"
label variable t020302 "Building and repairing furniture"
label variable t020303 "Heating and cooling"
label variable t020399 "Interior maintenance, repair, and decoration, n.e.c.*"
label variable t020401 "Exterior cleaning"
label variable t020402 "Exterior repair, improvements, and decoration"
label variable t020499 "Exterior maintenance, repair and decoration, n.e.c.*"
label variable t020501 "Lawn, garden, and houseplant care"
label variable t020502 "Ponds, pools, and hot tubs"
label variable t020599 "Lawn and garden, n.e.c.*"
label variable t020601 "Care for animals and pets (not veterinary care)"
label variable t020602 "Walking / exercising / playing with animals"
label variable t020699 "Pet and animal care, n.e.c.*"
label variable t020701 "Vehicle repair and maintenance (by self)"
label variable t020799 "Vehicles, n.e.c.*"
label variable t020801 "Appliance, tool, and toy set-up, repair, and maintenance (by self)"
label variable t020901 "Financial management"
label variable t020902 "Household and personal organization and planning"
label variable t020903 "HH and personal mail and messages (except e-mail)"
label variable t020904 "HH and personal e-mail and messages"
label variable t020905 "Home security"
label variable t020999 "Household management, n.e.c.*"
label variable t029999 "Household activities, n.e.c.*"
label variable t030101 "Physical care for hh children"
label variable t030102 "Reading to/with hh children"
label variable t030103 "Playing with hh children, not sports"
label variable t030104 "Arts and crafts with hh children"
label variable t030105 "Playing sports with hh children"
label variable t030106 "Talking with/listening to hh children"
label variable t030108 "Organization and planning for hh children"
label variable t030109 "Looking after hh children (as a primary activity)"
label variable t030110 "Attending hh children's events"
label variable t030111 "Waiting for/with hh children"
label variable t030112 "Picking up/dropping off hh children"
label variable t030199 "Caring for and helping hh children, n.e.c.*"
label variable t030201 "Homework (hh children)"
label variable t030202 "Meetings and school conferences (hh children)"
label variable t030203 "Home schooling of hh children"
label variable t030299 "Activities related to hh child's education, n.e.c.*"
label variable t030301 "Providing medical care to hh children"
label variable t030302 "Obtaining medical care for hh children"
label variable t030303 "Waiting associated with hh children's health"
label variable t030399 "Activities related to hh child's health, n.e.c.*"
label variable t030401 "Physical care for hh adults"
label variable t030402 "Looking after hh adult (as a primary activity)"
label variable t030403 "Providing medical care to hh adult"
label variable t030404 "Obtaining medical and care services for hh adult"
label variable t030405 "Waiting associated with caring for household adults"
label variable t030499 "Caring for household adults, n.e.c.*"
label variable t030501 "Helping hh adults"
label variable t030502 "Organization and planning for hh adults"
label variable t030503 "Picking up/dropping off hh adult"
label variable t030504 "Waiting associated with helping hh adults"
label variable t030599 "Helping household adults, n.e.c.*"
label variable t039999 "Caring for and helping hh members, n.e.c.*"
label variable t040101 "Physical care for nonhh children"
label variable t040102 "Reading to/with nonhh children"
label variable t040103 "Playing with nonhh children, not sports"
label variable t040104 "Arts and crafts with nonhh children"
label variable t040105 "Playing sports with nonhh children"
label variable t040106 "Talking with/listening to nonhh children"
label variable t040108 "Organization and planning for nonhh children"
label variable t040109 "Looking after nonhh children (as primary activity)"
label variable t040110 "Attending nonhh children's events"
label variable t040111 "Waiting for/with nonhh children"
label variable t040112 "Dropping off/picking up nonhh children"
label variable t040199 "Caring for and helping nonhh children, n.e.c.*"
label variable t040201 "Homework (nonhh children)"
label variable t040203 "Home schooling of nonhh children"
label variable t040301 "Providing medical care to nonhh children"
label variable t040302 "Obtaining medical care for nonhh children"
label variable t040303 "Waiting associated with nonhh children's health"
label variable t040401 "Physical care for nonhh adults"
label variable t040402 "Looking after nonhh adult (as a primary activity)"
label variable t040403 "Providing medical care to nonhh adult"
label variable t040404 "Obtaining medical and care services for nonhh adult"
label variable t040405 "Waiting associated with caring for nonhh adults"
label variable t040501 "Housework, cooking, and shopping assistance for nonhh adults"
label variable t040502 "House and lawn maintenance and repair assistance for nonhh adults"
label variable t040503 "Animal and pet care assistance for nonhh adults"
label variable t040504 "Vehicle and appliance maintenance/repair assistance for nonhh adults"
label variable t040505 "Financial management assistance for nonhh adults"
label variable t040506 "Household management and paperwork assistance for nonhh adults"
label variable t040507 "Picking up/dropping off nonhh adult"
label variable t040508 "Waiting associated with helping nonhh adults"
label variable t040599 "Helping nonhh adults, n.e.c.*"
label variable t049999 "Caring for and helping nonhh members, n.e.c.*"
label variable t050101 "Work, main job"
label variable t050102 "Work, other job(s)"
label variable t050103 "Security procedures related to work"
label variable t050104 "Waiting associated with working"
label variable t050199 "Working, n.e.c.*"
label variable t050201 "Socializing, relaxing, and leisure as part of job"
label variable t050202 "Eating and drinking as part of job"
label variable t050203 "Sports and exercise as part of job"
label variable t050205 "Waiting associated with work-related activities"
label variable t050301 "Income-generating hobbies, crafts, and food"
label variable t050302 "Income-generating performances"
label variable t050303 "Income-generating services"
label variable t050304 "Income-generating rental property activities"
label variable t050305 "Waiting associated with other income-generating activities"
label variable t050399 "Other income-generating activities, n.e.c.*"
label variable t050401 "Job search activities"
label variable t050403 "Job interviewing"
label variable t050404 "Waiting associated with job search or interview"
label variable t050499 "Job search and Interviewing, n.e.c.*"
label variable t059999 "Work and work-related activities, n.e.c.*"
label variable t060101 "Taking class for degree, certification, or licensure"
label variable t060102 "Taking class for personal interest"
label variable t060103 "Waiting associated with taking classes"
label variable t060199 "Taking class, n.e.c.*"
label variable t060201 "Extracurricular club activities"
label variable t060202 "Extracurricular music and performance activities"
label variable t060301 "Research/homework for class for degree, certification, or licensure"
label variable t060302 "Research/homework for class for pers. interest"
label variable t060303 "Waiting associated with research/homework"
label variable t060399 "Research/homework n.e.c.*"
label variable t060401 "Administrative activities: class for degree, certification, or licensure"
label variable t060403 "Waiting associated w/admin. activities (education)"
label variable t060499 "Administrative for education, n.e.c.*"
label variable t069999 "Education, n.e.c.*"

** Save to own computer to prepare for mergeing the 2 ATUS datasets 
save "C:\Users\akgilmar\Downloads\atussum_2014_.dta"

**Clear and upload atuscps_2014_  data set
use "C:\Users\akgilmar\Downloads\atuscps_2014_\atuscps_2014_.dta", clear

** Merge the atuscps_2014 and atussum_2014_
merge m:1 tucaseid using "C:\Users\akgilmar\Downloads\atussum_2014_.dta"

** Rename _merge varible for later codes
rename _merge _merge_old

**Rename gestfips to statefips to match TOA
rename gestfips statefips

** Save fully merged data set
save "merged_data.dta", replace

*ATUS DATA END


***OPPORTUNITY DATA START 

** Use county_cohort_trends.dta from the Opportunity Atlas 
use "C:\Users\akgilmar\Downloads\county_cohort_trends.dta" 

**Multiply population 
gen w_perm25 = perm_res_p25_kr24 * cz_pop2000
gen w_perm75 = perm_res_p75_kr24 * cz_pop2000

**Collapse to state level
collapse (sum) w_perm25 w_perm75 cz_pop2000, by(state_id)

**Recover the population-weighted average
gen perm25_popw = w_perm25 / cz_pop2000
gen perm75_popw = w_perm75 / cz_pop2000

*Rename state_id to statefips so it matches ATUS 
rename state_id statefips

** Save TOA weighted data
save "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\County_cohort_trends with population weights.dta"
clear


*** OPPORTUNITY DATA END 

OLIVER: This is where the state average data do would go but I cant figure it out
- I did go and made the command to make the state fips into the abbreviation just so it matches the other data sets ( but you can ignore/delete this if its not usefull!)
- Also there is a section in the Merging data sets where you do the command,
gen perm25_popw = w_perm25 / cz_pop2000
gen perm75_popw = w_perm75 / cz_pop2000
																		   , but I am unsure why since it was done in the TOA + Population portion. So would you change the description or delete it 





* Merge ATUS and TOA 

**Open Atus merged data
use "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\merged_data.dta"

** Drop _merge data 
drop _merge

** Merge the two sets on the statefips variable
merge m:1 statefips using "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\County_cohort_trends with population weights.dta"

** Remove non used variables
collapse (sum) w_perm25 w_perm75 cz_pop2000, by(statefips)

**OLIVER: lowki unsure why this one was done again?
gen perm25_popw = w_perm25 / cz_pop2000
gen perm75_popw = w_perm75 / cz_pop2000

** Label the new variables
label variable perm75_popw "Born into 75% rank at 24 age"
label variable perm25_popw "Born into 25% rank at 24 age"

** Save finished data set to use for analysis
save "C:\Users\akgilmar\OneDrive - Syracuse University\ECN\Merged,Weighed,Labled.dta"









* Ended Merge 

*** Add state label 
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


