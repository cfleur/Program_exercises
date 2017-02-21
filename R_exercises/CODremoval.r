
CODdata <- read.table('CODremoval.txt', header=TRUE, dec=',')

#Try to make meaningful 2D plots using plot, points and line functionsx 

# x <- CODdata[,2]
# y <- CODdata[,3]

# a <- x[seq(1,length(x),2)]
# b <- y[seq(1,length(y),2)]

# plot(a,b,col='red')


x1 <- CODdata$Aeration # call the columns by name
x2 <- CODdata$Dilution
y <- CODdata$COD

i0 <- which(x1==0) # more effective way to isolate rows in this case
i1 <- which(x1==1)

plot(x2[i1],y[i1], col='green',  xlab='dilution',ylab='COD removed', ylim=c(5,90), pch=16)
# to plot all x2s and ys whose value is 1 in column x1.
# pch = point size

points(points(x2[i0],y[i0],pch=16,col='blue'))
legend('topright',c('with aeration','without aeration'),
       pch=16,col=c('green','blue'))

# TO fit a plane in 2D (i.e. a line) of this data set
# COD = a + b*Aeration + c*Dilution, i.e. y = a + b*x1 + c*x2

lin.model <- lm(COD~Aeration+Dilution,data=CODdata)
print(summary(lin.model))

yfitted <- predict(lin.model)

lines(x2[i1],yfitted[i1], col='green')
lines(x2[i0],yfitted[i0], col='blue')
# the problem with this is that the points are not in order, causing line to double back on itself
# this can be avoided by 
# ordering them in the first place, via order function
# syntax: name <- order(w.r.t. which column)
# use: dataset_new <- [name,]

# OR 
# abc <- coefficients(lin.model)
# xx2 <- c(0,1)
# yy2 <- abc[1]+abc[2]*0+abc[3]*xx2
# lines(xx2, yy2, col='green')
# yy3 <- abc[1]+abc[2]+abc[3]*xx2
# lines(xx2,yy3)


