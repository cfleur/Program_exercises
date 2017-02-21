 
# Pre exam 1 #4

# get data
Cd.data <- read.table('preexam1_4_data.txt', header=TRUE)
extract.var(Cd.data)
#########################################################

Qe_measured <- Cd.data$Qe
Ci <- Cd.data$Ci


# Freundlich equation: Qe <- K_F*Ci^(1/n)
# Linear form: log(Qe) <- 1*log(K_F) + log(Ci)*(1/n)

# create matrecies
rhs <- c(log(Qe_measured))
CMcol1 <- c(rep(1,9))
CMcol2 <- c(log(Ci))
CM <- cbind(CMcol1,CMcol2)

# solve system conventionally, the answers seem reasonable
sol_m <- solve(t(CM)%*%CM,t(CM)%*%rhs)
print(sol_m)
K_F <- exp(sol_m[1,1]) 
n <- 1/sol_m[2,1]
print(rbind(K_F,n))


# solve overdetermined system with lm, but this seems to
# give a different answer, not sure why.
sol_lm <- lm(Qe_measured ~ log(Ci), data=Cd.data)
print(sol_lm)



Coles_n <- 2.347
Coles_K_F <- 5.446
Qe <- Coles_K_F*Ci^(1/Coles_n)

# Plot curve from equation
plot(Ci, Qe, ylim=c(2,22),col='white')
lines(Ci,Qe, lwd=2, col='green')

# Initiate a plot with measured data
points(Ci,Qe_measured, pch=1, col='blue')

