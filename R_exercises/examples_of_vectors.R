# Examples of vectors
# NB! You have to plot something before you can plot vectors
x <- c(1,2.8)
y <- c(1,2.2)
plot(x,y,type='l',xlim=c(0,3),ylim=c(0,3),lwd=2)
# to change into a vector use a function called arrows
arrows(1,1,2.8,2.2,lwd=2,col='blue')
#can also use this syntax: arrows(x[1],y[1],x[2],y[2])