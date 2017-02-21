
# Pre exam integrals #2

# Integrate from 0 to 24 with center points
t <- seq(0.1/2,24,.01)
step <- 0.1
Po <- 500*3600
P <- Po*((1/2)+(1/2)*cos(2*((pi/12)*(t-15))))
Tot_P <- sum(P)*step 
print(Tot_P) # This should be the Kj in the day.

# I'm really not sure if this number makes any sense...