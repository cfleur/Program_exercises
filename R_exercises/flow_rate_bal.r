flow <- matrix(c(1,-1,0,0,1,1,0,0,-1),3,3)
rhsflow <- matrix(c(60,30,30),3,1)
solflow <- solve(flow,rhsflow)
###############
xab123 <- matrix(c(60,0,-60,0,0,0,0,0,90,0,90,0,0,0,0,0,-60,0,0,60,0,-60,0,0,0,0,0,90,0,90,0,0,0,0,0,-60),6,6)
rhsab123 <- matrix(c(14,46,9,21,18,12),6,1)
solab123 <- solve(xab123,rhsab123)

print(solab123)