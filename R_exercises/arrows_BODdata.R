#plot the BOD data as a sequence of arrows
data(BOD) 
plot(BOD$Time,BOD$demand,type='l',lwd=2, col='blue')
arrows(BOD$Time[1],BOD$demand[1],BOD$Time[2],BOD$demand[2],lwd=2, col='blue')
arrows(BOD$Time[2],BOD$demand[2],BOD$Time[3],BOD$demand[3],lwd=2, col='blue')
arrows(BOD$Time[3],BOD$demand[3],BOD$Time[4],BOD$demand[4],lwd=2, col='blue')
arrows(BOD$Time[4],BOD$demand[4],BOD$Time[5],BOD$demand[5],lwd=2, col='blue')
arrows(BOD$Time[5],BOD$demand[5],BOD$Time[6],BOD$demand[6],lwd=2, col='blue')