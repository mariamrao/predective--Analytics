

bird1 <-read.csv("birds.csv")

View(bird1)
sex<-bird1$sex
curlen<-bird1$curlen
sexcode<-ifelse(sex=="F", 1, 0)
plot(curlen, jitter(sexcode, 0.15), pch=19, xlab="Bill length(mm)", ylab = "sex(0 - male, 1 - female)")
model <- glm(sexcode~curlen, binomial())
xv<-seq(min(curlen), max(curlen), 0.01)
yv<-predict(model, list(curlen=xv), type="response")
lines(xv, yv, col="green")
