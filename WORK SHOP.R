install.packages("igraph")
install.packages("tidytext")

library(igraph)
gh<-graph(c(1,2,3,3,4,4,1), directed = F, n=8)
plot(gh, vertex.color='green', vertex.size=40,
     edge.color='red')
gh[]
gh1<-graph(c("richard", "lai", "Marry", "JOhn", "Tim", "richard", "lai", "tim", "JOhn"))
plot(gh1, vertex.color='green', vertex.size=40,
     edge.color='red')
degree(gh1, mode='all')
degree(gh1, mode='in')
degree(gh1, mode='out')
