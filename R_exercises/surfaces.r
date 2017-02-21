# source('######')
library(plot3D)

# plotting planes in 3D
# first we need to make a mesh grid of x and y coordinates

xy <- (mesh(seq(-2,2,.05),seq(-2,2,.05)))

# Exmaple plane: z = 10-2x+3y

x <- xy$x
y <- xy$y
# plane equation
z <- 10-2*x+3*y

perspbox(x,y,z, bty = "b2", ticktype = "detailed", d=10)
surf3D(x,y,z, add=TRUE)

# add a straight line into the same plot {x = 1-2t, y = 1+2t, z = t}
t <- c(-2,2)
x_ln = 1-2*t; y_ln = -1+2*t; z_ln = t

lines3D(x_ln,y_ln,z_ln, col='black', lwd=2, add=TRUE)

# point of intersection

CM <- matrix(c(2,1,0,0,-3,0,1,0,1,0,0,1,0,2,-2,-1),4,4)
rhs <- matrix(c(10,1,-1,0),4,1)
print(xyzt <- solve(CM,rhs))

# to check
# sub in t value, and should get same numbers
# also sux in x and  y to plane equation, should get zero

##################################

# plot the preious plane and the plane z = 2x-y on the same graph
xy <- (mesh(seq(-2,2,.05),seq(-2,2,.05)))
x <- xy$x
y <- xy$y
# plane equation
z <- 10-2*x+3*y
perspbox(x,y,z, bty = "b2", ticktype = "detailed", d=10)
surf3D(x,y,z, add=TRUE)
zz <- 5 + 2*x-y
surf3D(x,y,zz, add=TRUE)

# solve the line where the two planes meet
CM <- matrix(c(2,2,-3,-1,1,-1),2,3)
rhs <- matrix(c(10,-5),2,1)
CM_rhs <- cbind(CM,rhs)
library(pracma)
print(rref(CM_rhs))

#plot the line
t <- c(-10,10)
xl <- -6.25 + t
yl <- -7.5 +t
zl <- t
lines3D(xl,yl,zl, col='black', lwd=4, add=TRUE)
