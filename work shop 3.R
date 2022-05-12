#descriptive data analysis
nstall.packages("xlsx")
library(xlsx)
data<-read.csv("commerce.csv")
print(data)
#header in the data file 
head(data)
#file structure
str(data)

data<- read.csv("commerce.CSV")
print(data)
str(data)
min(data$ProductPrice)
max(data$ShippingFee)
max(data$ProductPrice)
range(data$ProductPrice)
max(data$ProductPrice)-min(data$ProductPrice)# you can min the max to min
mean(data$productPrice)# getting the mean price
median(data$ProductPrice)#getting the median 
quantile(data$ProductPrice)# getting the quantile get the its sort the data first and it will give the number of data point
qunatile(data$ProductPrice,0.5)# finding the 0.5 
IQR(data$ProductPrice)# getting the IQR
sd(data$ProductPrice)# getting standrad dev
summary(data) # getting the summary 
#CV coefficient  of variance if it is psotive if that your hypotehsis is oaky 
sd(data$ProductPrice)/mean(data$ProductPrice)
sort(data$OrderID)
cor(data$ProductPrice,data$ShippingFee)# if your alpha value is poitive it mean they are correlted
barplot(data$ProductPrice,data$ShippingFee)
hist(data$ProductPrice)
boxplot(data$ProductPrice)


