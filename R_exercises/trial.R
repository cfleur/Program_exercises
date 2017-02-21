data(BOD) 
plot(BOD$Time,BOD$demand,type='l',lwd=2, col='blue',main='BOD',xlab='Time',ylab='Demand')
x <- BOD$Time
y <- BOD$demand
s <- seq(length(x)-1)  
arrows(x[s], y[s], x[s+1], y[s+1],lwd=2,col = c(rep("turquoise",1),rep("turquoise1",1),rep("turquoise2",1),rep("turquoise3",1),rep("turquoise4",1)))
