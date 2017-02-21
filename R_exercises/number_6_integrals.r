T <- 1
beta <- 2
eta <- 1

# Integrate from 0 to T wit center points
t <- seq(0.01/2,T,.01)
step <- 0.01
y <- beta/eta*(t/eta)^(beta-1)*exp(-(t/eta)^beta)
IT  <- sum(y)*step 
ITinf <- 1-IT
print(ITinf)

# as a funciton
LifeTime <- function(t,beta,eta)
{
  return(beta/eta*(t/eta)^(beta-1)*
           exp(-(t/eta)^beta))
}

ITinf2 <- integrate(LifeTime,0,T,beta,eta)$value
print(1-ITinf2)

#trapazoidal
t    <- seq(0,T,step)
y    <- beta/eta*(t/eta)^(beta-1)*
  exp(-(t/eta)^beta)
print(1-trapez(t,y))
# do not use for functions, but with data it is good
