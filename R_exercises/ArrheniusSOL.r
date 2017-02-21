y <- matrix(log(Data$k,base = exp(1)),4,1)
cm <- cbind(rep(1,4),1/Data$T)
