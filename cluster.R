library(dplyr)
View(mtcars)
head(mtcars)

distance_mat<-dist(mtcars, method='euclidean')

distance_mat
set.seed(240)
Hier_cl<-hclust(distance_mat, method = "average")
Hier_cl
plot(Hier_cl)
abline(h=110, col="red")
fit<-cutree(Hier_cl, k=3)
fit
table(fit)
rect.hclust(Hier_cl, k=3, border="red")
