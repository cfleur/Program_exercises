# this function calculates 
# the means between a 2 series of values.
# means2cp stands for means of 2 consecutive points. 

means2cp <- function(x)
{
  n <- length(x) # calculates the length of sequence
  return((x[1:(n-1)]+x[2:n])/2)
}

# print(z <- sum(means2cp(data$column1)*(data$column2)))

trapez <- function(x,y)
{
  return(sum(means2cp(y)*diff(x)))
}

# print(v <- trapez(data$column1,data$column2))

pumpdata <- read.table('pumpdata.txt',header=TRUE)
print(V <- sum(means2cp(pumpdata$Rate)*diff(pumpdata$Time)))

# Plot a curve

plot(pumpdata$Time,pumpdata$Rate,type='l',lwd=2,xlab='Time',
     ylab='Rate',main='Pump data',ylim=c(0,65))
grid()

# Plot a smooth version of the curve

smooth.rate <- smooth.spline(pumpdata$Time,pumpdata$Rate,spar=.4)
plot(pumpdata$Time,pumpdata$Rate,pch=16,xlab='Time',
     ylab='Rate',main='Pump data',ylim=c(0,65))
time <- seq(0,60,1)
lines(time,predict(smooth.rate,time)$y, lwd=2,col='blue')

# plausable - process data
