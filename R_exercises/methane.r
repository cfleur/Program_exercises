x <- c(0,1,-1,1,-1)
y <- c(0,1,1,-1,-1)
z <- c(0,1,-1,-1,1)

perspbox(x,y,z, bty = "b2", ticktype = "detailed")

segments3D(x[1],y[1],z[1],x[2],y[2],z[2],col='red',lwd=2,add=TRUE) # c1-c2
segments3D(x[1],y[1],z[1],x[3],y[3],z[3],col='green',lwd=2,add=TRUE) # c1-cl3
segments3D(x[1],y[1],z[1],x[4],y[4],z[4],col='blue',lwd=2,add=TRUE) # c1-h4
segments3D(x[1],y[1],z[1],x[5],y[5],z[5],col='blue',lwd=2,add=TRUE) # c1-h5


points3D(x[1],y[1],z[1],add=TRUE,colkey=FALSE)
points3D(x[2],y[2],z[2],add=TRUE,colkey=FALSE)
points3D(x[3],y[3],z[3],add=TRUE,colkey=FALSE)
points3D(x[4],y[4],z[4],add=TRUE,colkey=FALSE)
points3D(x[5],y[5],z[5],add=TRUE,colkey=FALSE)

#text3D(x,y,z,atom, add=TRUE)
plotdev(d=10, theta=90, phi=10,xlim=c(-2,2),ylim=c(-2,2),zlim=c(-2,2))
