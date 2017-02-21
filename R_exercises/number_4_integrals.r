T<-c(23,48,73,123,223,273)
Cp<-c(13.0,29.7,40.5,55.4,97.6,122.3)

plot(T,Cp, xlim=c(9,200))
plot(T,Cp/T,type='l',xlim=c(0,280),ylim=c(0,.7))

a <- 13/23^3
T1 <- seq(0,23,.1)
Cp1 <- a*T1^3
lines(T1,Cp1/T1,col='red')
lines(T,Cp/T,type='h')
abline(c(0,0))

cat('Tarpazoidal intrgral: ',trapez(Cp,Cp/T),'\n')
lower<-T[1]
upper<-T[6]
cat('R function intrgral: ',integrate(approxfun(T,Cp/T),lower,upper)$value,'\n')

plot(T,Cp,xlim=c(0,280),ylim=c(0,130))

# 3rd order polynomial fit

poly3 <- lm(Cp~T+I(T^2)+I(T^3))
T2 <- seq(0,273,.1)
Cpfit3 <- predict(poly3,newdata=data.frame(T=T2))
lines(T2,Cpfit3,col='red')

plot(T,Cp,xlim=c(0,280),ylim=c(0,130))

# 4rd order polynomial fit

poly4 <- lm(Cp~T+I(T^2)+I(T^3)+I(T^4))
T2 <- seq(0,273,.1)
Cpfit4 <- predict(poly4,newdata=data.frame(T=T2))
lines(T2,Cpfit5,col='yellow')

# 5rd order polynomial fit

poly5 <- lm(Cp~T+I(T^2)+I(T^3)+I(T^4)+(T^5))
Cpfit5 <- predict(poly5,newdata=data.frame(T=T2))
lines(T2,Cpfit5,col='green')




