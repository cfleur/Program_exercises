# Read in BOD data
BOD <- read.table('BOD_data.txt', header=TRUE)
# BOD IS A DATA FRAME, THIS IS THE NORMAL CLASS TO PUT IN STATYSTICAL DATA.
# Plot the data
plot(BOD$Day,BOD$BOD,xlab='Day',ylab='BOD [mg/L]',pch=8,col='violetred')
grid()
# Creat a time sequence seq(start,stop,step)
t <- seq(0,100,1)
BOD.model <- 34.5*(1-exp(-0.03*t))
# Add the (dense) polygon
lines(t,BOD.model,lwd=2,col='violet')
# This model could be made to fit better. If it is a linear model, can it be put into linear form?
# Such questions may appear in the exam.
# Ans: variables: t -> independent. BOD_t -> dependent.
# parameters: UBOD -> unknown. k ->unknown.
# see notes: fitting this model requires non linear techniques.
# see Lab1.pdf no.1, c for alternative equation, which can be linearized (see notes).
# Solve the overdetermined system using least squares model.

y <- BOD$Day*BOD$BOD
x1 <- BOD$BOD
x2 <- BOD$Day
#linear model lm(dependent variable, tilda, independent variables, seperated by +) -1 means take the intercept away
model <- lm(y ~ x1+x2-1)
print(model)
K <- -coefficients(model)[1]
ubod <- coefficients(model)[2]

BOD.model.lin <- (ubod*t)/(K+t)
lines(t,BOD.model.lin,lwd=2,col='skyblue')



