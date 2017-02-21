# this function calculates 
# the means between a 2 series of values.
# means2cp stands for means of 2 consecutive points. 

means2cp <- function(x)
{
  n <- length(x) # calculates the length of sequence
  return((x[1:(n-1)]+x[2:n])/2)
}

print(z <- sum(means2cp(data$column1)*(data$column2)))

trapez <- function(x,y)
{
  return(sum(means2cp(y)*diff(x)))
}

print(v <- trapez(data$column1,data$column2))