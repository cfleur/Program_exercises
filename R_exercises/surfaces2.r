library(plot3D)

# plotting surfaces in 3D
# first we need to make a mesh grid of x and y coordinates

xy <- (mesh(seq(-6,6,.1),seq(-6,6,.1)))

# Exmaple surface: z = 10-2x+3y

x <- xy$x
y <- xy$y
# plane equation
z <- sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)
# z[which(is.na(z))] <- 1

perspbox(x,y,z, bty = "b2", ticktype = "detailed", d=10)
surf3D(x,y,z)
