pentagon.verticies <- read.table('pentagon_verticies_16num4.txt', header=TRUE)
extract.var(pentagon.verticies)
HP <- c(rep(0,2),4)
xyz <- rbind(pentagon.verticies,HP)

i   <- c(1:5,1,6,2,6,3,6,4,6,5)


perspbox(xy[,1],xyz[,2],xyz[,3], bty = "b2", ticktype = "detailed", d=10) 
# plotdev(d=10, theta=80, phi=20,xlim=c(-4,4),ylim=c(-4,4),zlim=c(0,4))

lines3D(xyz[i,1],xyz[i,2],xyz[i,3],add=TRUE,
        lwd=2,col='green3',colkey=FALSE)
plotdev(d=10, theta=80, phi=20,xlim=c(-4,4),ylim=c(-4,4),zlim=c(0,4))

#segments3D(x[1],y[1],z[1],x[2],y[2],z[2],col='blue',lwd=2,add=TRUE)
# change limits and viewing angle



