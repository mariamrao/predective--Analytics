library(randomForest) # loading the library for random Forest 
library(dplyr)
# loading data
mydata = iris
View(mydata)
str(mydata)i
index = sample(2, nrow(mydata), replace = TRUE , prob = c(0.7 , 0.30))
train= mydata[index == 1,] # splitting the data 
test = mydata[index == 2,]
RFModel = randomForest(Species~ ., data =train) # creating the Rf model
Species_pred = predict(RFModel , train)

train$Species_pred=Species_pred
View(Species_pred)
CM =table(train$Species,train$Species_pred) # confsuin metrics
View(CM) # conclusion my confusion metrics are clean 
