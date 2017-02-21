# Activate function collection source('######')

# example on segments
x0=1:2;y0=1:2;z0=3:4;
x1=x0+2;y1=y0+3;z1=z0+3
xx = c(x0,x1)
yy = c(y0,y1)
zz = c(z0,z1)

# create a box
perspbox(xx,yy,zz, bty = "b2", ticktype = "detailed") 
# plot segments and add starting points
segments3D(x0,y0,z0,x1,y1,z1,col='red',lwd=2,add=TRUE)
points3D(x0,y0,z0,add=TRUE,colkey=FALSE)
# change limits and viewing angle
plotdev(d=10, theta=80, phi=20,xlim=c(-2,8),ylim=c(-2,8),zlim=c(-2,8))

# the same using my function vector3D
OP <- cbind(x0,y0,z0)
v  <- cbind(x1-x0,y1-y0,z1-z0)
vector3D(OP,v,col=c('red','blue'),arrow=FALSE)
# change limits and viewing angle
plotdev(d=10, theta=80, phi=20,xlim=c(-2,8),ylim=c(-2,8),zlim=c(-2,8))

# a polygon example
# bottom plane coordinates
xy  <- mton(ncp=1)
# add z coordinates
xyz <- cbind(xy,c(rep(0,4),3))
# plotting sequence
i   <- c(1,2,4,3,1,5,3,4,5,2,1,5)
perspbox(xyz[,1],xyz[,2],xyz[,3],bty="b2",ticktype="detailed",d=10) 
lines3D(xyz[i,1],xyz[i,2],xyz[i,3],add=TRUE,
        lwd=2,col='green3',colkey=FALSE)
plotdev(d=10, theta=40, phi=20,
        xlim=c(-2,2),ylim=c(-2,2),zlim=c(0,4))

