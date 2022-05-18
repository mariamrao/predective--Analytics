install.packages("party")
install.packages("partykit")
library(party)
library(partykit)
mydata<- read.csv("wine.csv")
View(data)
set.seed(1234) # random data selection use 1234
ndata<-sample(2,nrow(mydata),replace= TRUE, prob =c(0.7, 0.30))
train.data <- mydata[ndata==1,] # train purpose (splitting)
test.data <-mydata[ndata==2,]
myv<-Type~Alcohol+Ash+Ash_Alcalinity+Flavanoids+Proline
## condtional tree 
Wine_ctree <- ctree(myv , data =train.data)
# how to see the tree works 
table(predict(Wine_ctree) , train.data$Type)
plot(Wine_ctree) # plotting the data if the p value is negative it means relation is not good 
testpred<- predict(Wine_ctree , newdata= test.data) # now testing the test data to see the relationship 
table(testpred , test.data$Type)
plot(testpred)
