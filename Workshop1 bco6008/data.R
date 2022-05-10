
install.packages("janitor")
install.packages("MASS")
install.packages("ISLR")
install.packages("readxl")
library(tidyverse)
library(janitor)
library(readxl)

## reading the file 
age <-read_excel("age.xls")

lmheight=lm(height~age, data=age)
summary(lmheight)

##reading another data

pressure <- read_excel("pressure.xlsx")
lmtemp= lm(pressure~Temperature, data =pressure)
plot(pressure , pch=2 , col= "blue")
abline(lmtemp)

#reading the file 
 items <- read_excel("item.xlsx")
lmcost=lm(cost~id , data= items)
plot(items, pch= 16 , col= "blue")
albine(lmcost)
