#plot the BOD data as a sequence of arrows

data(BOD) 
plot(BOD$Time,BOD$demand,type='l',lwd=2, col='blue',main='BOD',xlab='Time',ylab='Demand')
x <- BOD$Time
y <- BOD$demand
s <- seq(length(x)-1)  
arrows(x[s], y[s], x[s+1], y[s+1],lwd=2,col = c(rep("turquoise",1),rep("turquoise1",1),rep("turquoise2",1),rep("turquoise3",1),rep("turquoise4",1)))

plot(BOD$Time,BOD$demand,type='l',lwd=2, col='blue',main='BOD',xlab='Time',ylab='Demand')
arrows(BOD$Time[1],BOD$demand[1],BOD$Time[2],BOD$demand[2],lwd=2, col='blue')
arrows(BOD$Time[2],BOD$demand[2],BOD$Time[3],BOD$demand[3],lwd=2, col='blue')
arrows(BOD$Time[3],BOD$demand[3],BOD$Time[4],BOD$demand[4],lwd=2, col='blue')
arrows(BOD$Time[4],BOD$demand[4],BOD$Time[5],BOD$demand[5],lwd=2, col='blue')
arrows(BOD$Time[5],BOD$demand[5],BOD$Time[6],BOD$demand[6],lwd=2, col='blue')