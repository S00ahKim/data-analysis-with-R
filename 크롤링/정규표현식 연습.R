string <- "R is a free software environment for statistical computing and graphics. It compiles and runs on a wide variety of UNIX platforms, Windows and MacOS. To download R, please choose your preferred CRAN mirror.
           
           If you have questions about R like how to download and install the software, or what the license terms are, please read our answers to frequently asked questions before you send an email.
           
           News
           R version 3.5.3 (Great Truth) prerelease versions will appear starting Friday 2019-03-01. Final release is scheduled for Monday 2019-03-11.
           
           R version 3.5.2 (Eggshell Igloo) has been released on 2018-12-20.
           
           The R Foundation Conference Committee has released a call for proposals to host useR! 2020 in North America.
           
           You can now support the R Foundation with a renewable subscription as a supporting member
           
           The R Foundation has been awarded the Personality/Organization of the year 2018 award by the professional association of German market and social researchers."

string

string <- gsub("[[:space:]]{2,}"," ", string)

string

string <- gsub("[()]", "", string)

string


gsub("^[1-9][0-9]*$"," ",c("123", "wings", "myongji", "34", "02", "helloR", "4gb", "12 45")) 

gsub("^[0-9]+(\\.[0-9]{3,})?$","",c("123","123.17","123.456","123.","12.79"))
