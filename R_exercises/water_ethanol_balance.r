# The water ethanol separation problem
ethanol_in <- 500
water_in <- 500
w.2.1 <- 96
w.2 <- 400
# Balance for ethanol: ethanol_in = w.2.1*w.2+w.3.1*w.3
# Balance for water: water_in = w.2.2*w.2+w.3.2*w.3
# Two more independent equations are needed
w.1 <- ethanol_in + water_in
w.3 <- w.1 - w.2 # from the balance w.1 = w.2 + w.3
w.2.2 <- 1 - w.2.1 
# if we dont solve w.3 we will have a product of two unknowns and the equation will be non linear.
# Balance for ethanol: ethanol_in = .96*400+w.3.1*600
# Balance for water: water_in = 0.04*400+w.3.2*600
# this is very simple, we still try with matricies

CM <- matrix(c(w.3,0,0,w.3),2,2, byrow=TRUE)
RHS <- matrix(c(ethanol_in, water_in),2,1, byrow=TRUE)
sol <- solve(CM,RHS)
print(sol)