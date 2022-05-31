datafile <- read.csv("sb.csv")
print(datafile)

head(datafile)
str(datafile)
plot(datafile, xlab="year", ylab="average score", main="BOS score")
plot(datafile, xlab="year", ylab="average score", main="BOS score", type="b")
plot(datafile, xlab="year", ylab="average score", main="BOS score", type="l")
plot(datafile, xlab="year", ylab="average score", main="BOS score", type="n")

plot(datafile, xlab="year", ylab="average score", main="BOS score", type="b", pch=1)
text(x=c(1920,1940, 1960), y=60,
     lables=c("font=1", "font=2", "font=3", "font=4"),
     font=c(1, 2, 3, 4))
text(x=1920, y=60,
     labels="srt=30", srt=30)
text(x=c(1920, 1940, 1960, 1980), y=60,
     labels=c("red", "blue", "green", "magenta"),
     col=c("red", "blue", "green", "magenta"))
