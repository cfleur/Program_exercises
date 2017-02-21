atom.data <- read.table('chloroethane.txt', header=TRUE)
extract.var(atom.data)

perspbox(x,y,z, bty = "b2", ticktype = "detailed")

segments3D(x[1],y[1],z[1],x[2],y[2],z[2],col='red',lwd=2,add=TRUE) # c1-c2
segments3D(x[1],y[1],z[1],x[3],y[3],z[3],col='green',lwd=2,add=TRUE) # c1-cl3
segments3D(x[1],y[1],z[1],x[4],y[4],z[4],col='blue',lwd=2,add=TRUE) # c1-h4
segments3D(x[1],y[1],z[1],x[5],y[5],z[5],col='blue',lwd=2,add=TRUE) # c1-h5
segments3D(x[2],y[2],z[2],x[6],y[6],z[6],col='blue',lwd=2,add=TRUE) # c2-h6
segments3D(x[2],y[2],z[2],x[7],y[7],z[7],col='blue',lwd=2,add=TRUE) # c2-h7
segments3D(x[2],y[2],z[2],x[8],y[8],z[8],col='blue',lwd=2,add=TRUE) # c2-h8



points3D(x[1],y[1],z[1],add=TRUE,colkey=FALSE)
points3D(x[2],y[2],z[2],add=TRUE,colkey=FALSE)
points3D(x[3],y[3],z[3],add=TRUE,colkey=FALSE) 
points3D(x[4],y[4],z[4],add=TRUE,colkey=FALSE)
points3D(x[5],y[5],z[5],add=TRUE,colkey=FALSE)
points3D(x[6],y[6],z[6],add=TRUE,colkey=FALSE)
points3D(x[7],y[7],z[7],add=TRUE,colkey=FALSE)
points3D(x[8],y[8],z[8],add=TRUE,colkey=FALSE)

text3D(x,y,z,atom, add=TRUE)
plotdev(d=10, theta=20, phi=60,xlim=c(-2,2),ylim=c(-2,2),zlim=c(-2,2))
