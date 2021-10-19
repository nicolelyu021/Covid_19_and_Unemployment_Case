BostonMean<-mean(Boston$Unemployment..Rate)
BostonMean
sd(Boston$Unemployment..Rate)
hist(Boston$Unemployment..Rate,col="lightblue", 
     main="Boston Unemployment Rate Histogram",breaks=20)
qqnorm(Boston$Unemployment..Rate, pch = 1, 
       main="Boston Unemployment Rate Q-Q Plot")
qqline(Boston$Unemployment..Rate, col = "steelblue", lwd = 2)


WalthamMean<-mean(Waltham$Unemployment.Rate)
WalthamMean
sd(Waltham$Unemployment.Rate)
hist(Waltham$Unemployment.Rate,col="pink", 
     main="Waltham Unemployment Rate Histogram", breaks=20)
qqnorm(Waltham$Unemployment.Rate, pch = 1, 
       main="Waltham Unemployment Rate Q-Q Plot")
qqline(Waltham$Unemployment.Rate, col = "pink", lwd = 2)

Estimator <- BostonMean-WalthamMean
Estimator

t.test(Boston$Unemployment..Rate,Waltham$Unemployment.Rate)