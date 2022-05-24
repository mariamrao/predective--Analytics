library (tidyverse)
library(dplyr)
employed <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-23/employed.csv')

earn <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-23/earn.csv')
basic url
# https://www.bls.gov/cps/aa2020/cpsaat17.xlsx

library(tidyverse)
library(glue)
library(readxl)
library(knitr)


get_bls_report <- function(year){
  
  report_url <- glue::glue("https://www.bls.gov/cps/aa{year}/cpsaat17.xlsx")
  
  download.file(report_url, destfile = glue("2021/2021-02-23/bls-{year}.xlsx"))
}

ex_2019 <- readxl::read_excel("2021/2021-02-23/bls-2019.xlsx")

2015:2019 %>% 
  walk(get_bls_report)

# 2020 has no year in front of it
download.file(
  "https://www.bls.gov/cps/cpsaat17.xlsx", 
  destfile = "2021/2021-02-23/bls-2020.xlsx"
)

str(employed)
table(employed$industry)
head(employed)
set.seed(9850)

group<-runif(5)
group

group<-runif(nrow(employed))
group
newemployed_data_1<-employed[order(group),]
head(newemployed_data_1)

summary(newemployed_data_1[,c(1,2,3,4)])
normalize<-function(x){
  
  + return((x - min(x))/(max(x) - min(x))) }

normalize(c(1,2,3,4,5))


normalize(c(20,30,40,50,60))
newemployed_data_2<-as.data.frame(lapply(newemployed_data_1[, c(1,2,3,4)], normalize))
str(newemployed2)

summary(newdata2)

