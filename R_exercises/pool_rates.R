#see excel file pool_rates.xlsx
CM <- matrix(c(1,0,1,1,1,0,0,1,1),3,3)
abt <- 1/6
bct <- 1/10
act <- 1/7.5
rhs <- matrix(c(abt,bct,act),3,1)
sol_rates <- solve(CM,rhs)
print(sol_rates)
############
abc_rate <- sum(sol_rates)
print(abc_rate) # this is the total rate of all pipes.
############
#NB! printing sums of matrix: print(sum(Cmatix_name[row,column]))
############
print(1/sol_rates) #t = V / r ---> these are the 
#times that it will take each pipe.
print(1/abc_rate) #it takes this many hours to 
#fill the pool with all pipes.