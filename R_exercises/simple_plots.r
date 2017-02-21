# simple plot
# a line segment 
x <- c(1,3) # a sequence containing the numbers 1 and 3
y <- c(5,1) # "c" comes from concatenate
plot (x,y)
# source on save = run the script and save at same time
plot(x,y,type='l') # this creates a line 
plot(x,y,type='b') # b = both
plot(x,y,type='h', ylim=c(0,6),xlim=c(0,4),lwd=10,col='peachpuff');grid() # makes sticks from 0 to the point
# "h" comes from height
# to make 2 number sequences, always use c
#lwd = line width
# ; seperates commands, but 'grid' could also go to the next line. this is a new function, as there are brackets

# google commands for different colours and types of plots


