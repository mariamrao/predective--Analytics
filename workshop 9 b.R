newdata=iris
View(newdata)
str(newdata)

table (newdata$Species)


head(newdata)

set.seed(9850)

group<-runif(5)
group

group<-runif(nrow(newdata))
group

newdata1<-newdata[order(group),]

head(newdata1)

summary(newdata1[,c(1,2,3,4)])

normalize<-function(x){
  
  + return((x - min(x))/(max(x) - min(x))) }

normalize(c(1,2,3,4,5))


normalize(c(20,30,40,50,60))

newdata2<-as.data.frame(lapply(newdata1[, c(1,2,3,4)], normalize))
str(newdata2)

summary(newdata2)

