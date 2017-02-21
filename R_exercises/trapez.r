trapez <- function(x,y)
{
  dx <- diff(x)
  n <- length(x)
  my <- (y[1:(n-1)]+y[2:n])/2
  return(sum(my*dx))
}