{smcl}
{com}{sf}{ul off}{txt}{.-}
      name:  {res}<unnamed>
       {txt}log:  {res}C:\Users\oalevesq\Downloads\File for running 75th percentile ttest.do
  {txt}log type:  {res}smcl
 {txt}opened on:  {res} 1 Dec 2025, 15:05:34

{com}. use "C:\Users\oalevesq\Downloads\New merged data with 25th and 75th (1).dta" 
{err}no; dataset in memory has changed since last saved
{txt}{search r(4), local:r(4);}

{com}. clear

. log using "C:\Users\oalevesq\Downloads\File for running 75th percentile ttest.do", replace
{err}log file already open
{txt}{search r(604), local:r(604);}

{com}. use "C:\Users\oalevesq\Downloads\New merged data with 25th and 75th (1).dta" 

. summarize perm_res_p75_kr24 

{txt}    Variable {c |}        Obs        Mean    Std. dev.       Min        Max
{hline 13}{c +}{hline 57}
perm~75_kr24 {c |}{res}         51    57.18421    3.137886   48.33286   66.78091

{com}. summarize perm_res_p75_kr24 , detail

                  {txt}(mean) perm_res_p75_kr24
{hline 61}
      Percentiles      Smallest
 1%    {res} 48.33286       48.33286
{txt} 5%    {res} 52.61826       51.80124
{txt}10%    {res} 53.40945       52.61826       {txt}Obs         {res}         51
{txt}25%    {res}  54.9004       53.11689       {txt}Sum of wgt. {res}         51

{txt}50%    {res} 57.40665                      {txt}Mean          {res} 57.18421
                        {txt}Largest       Std. dev.     {res} 3.137886
{txt}75%    {res} 59.23489       61.52937
{txt}90%    {res} 60.71193       61.83788       {txt}Variance      {res} 9.846329
{txt}95%    {res} 61.83788       62.33228       {txt}Skewness      {res} .0958354
{txt}99%    {res} 66.78091       66.78091       {txt}Kurtosis      {res} 4.113187

{com}. generate highmob = perm_res_p75_kr24 > r(p50)

. tab highmob

    {txt}highmob {c |}      Freq.     Percent        Cum.
{hline 12}{c +}{hline 35}
          0 {c |}{res}         26       50.98       50.98
{txt}          1 {c |}{res}         25       49.02      100.00
{txt}{hline 12}{c +}{hline 35}
      Total {c |}{res}         51      100.00

{com}. ttest trthh, by(highmob)

{txt}Two-sample t test with equal variances
{hline 9}{c TT}{hline 68}
   Group{col 10}{c |}{col 16}Obs{col 27}Mean{col 35}Std. err.{col 47}Std. dev.{col 59}[95% conf. interval]
{hline 9}{c +}{hline 68}
       0 {c |}{res}{col 12}     26{col 22} 185.3073{col 34} 11.53769{col 46} 58.83089{col 58}  161.545{col 70} 209.0696
       {txt}1 {c |}{res}{col 12}     25{col 22}  195.959{col 34}  18.6957{col 46} 93.47852{col 58} 157.3729{col 70}  234.545
{txt}{hline 9}{c +}{hline 68}
Combined {c |}{res}{col 12}     51{col 22} 190.5287{col 34} 10.80469{col 46} 77.16093{col 58} 168.8269{col 70} 212.2306
{txt}{hline 9}{c +}{hline 68}
    diff {c |}{res}{col 22}-10.65164{col 34} 21.77988{col 58}-54.41995{col 70} 33.11666
{txt}{hline 9}{c BT}{hline 68}
    diff = mean({res}0{txt}) - mean({res}1{txt})                                      t = {res} -0.4891
{txt}H0: diff = 0                                     Degrees of freedom = {res}      49

    {txt}Ha: diff < 0                 Ha: diff != 0                 Ha: diff > 0
 Pr(T < t) = {res}0.3135         {txt}Pr(|T| > |t|) = {res}0.6270          {txt}Pr(T > t) = {res}0.6865

{com}. log close
      {txt}name:  {res}<unnamed>
       {txt}log:  {res}C:\Users\oalevesq\Downloads\File for running 75th percentile ttest.do
  {txt}log type:  {res}smcl
 {txt}closed on:  {res} 1 Dec 2025, 15:08:40
{txt}{.-}
{smcl}
{txt}{sf}{ul off}