#1a)
A <- matrix(c(2,1,1,-2),2,2)
B <- matrix(c(11,3),2,1)
library(MASS)
print(fractions(solve(A,B)))
#1b)
#A+B
A <- matrix(c(1,2,3),3,1)
B <- matrix(c(-3,-2,-1),3,1)
AplusB <- A+B
print(AplusB)
#1b)
#2A-B
A <- matrix(c(1,2,3),3,1)
B <- matrix(c(-3,-2,-1),3,1)
ans <- (2*A)-B
print(ans)
#1b)
#A'B
A <- matrix(c(1,2,3),3,1)
B <- matrix(c(-3,-2,-1),3,1)
AtransB <- t(A)%*%B
print(AtransB)
#1b)
#AB'
A <- matrix(c(1,2,3),3,1)
B <- matrix(c(-3,-2,-1),3,1)
BAtrans <- A%*%t(B)
print(BAtrans)
#1c)
A <- matrix(c(1,2,2,3,2,1,1,3,3),3,3)
B <- matrix(c(5,7,6),3,1)
sol <- solve(A,B)
print(sol)


