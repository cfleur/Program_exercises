# plotting points and polygons
# there are lots of example sets in R
data(BOD) #an example data set
plot(BOD$Time,BOD$demand,type='b',lwd=2, col='blue')
#the following makes a line of best fit
abline(lm(demand~Time,data=BOD),col='red') #y=a+bx, lm=linear model
#this polt is a polygon, polygons can be closed or open