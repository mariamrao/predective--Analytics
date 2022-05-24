newdata <- iris
view(newdata)
str(newdata) # checking the structure
table(newdata$Species)
set.seed(9850)
group<- runif(5)
group

group<- runif(nrow(newdata)) # shuffle the data to get the diff number 

group
newdata1<- newdata[order(group),]
head(newdata1)
summary(newdata1[,c(1,2,3,4,5)])
normalize <- function(x){
  + return(x-min(x))/ max(x)-min(x)
}
normalize (c(1,2,3,4,5)) 

newdata2<-as.data.frame(lapply(newdata[,c(1,2,3,4,5)], normalize))
str(newdata2)
summary(newdata2)
