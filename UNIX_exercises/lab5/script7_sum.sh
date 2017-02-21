#!/bin/bash
# This program takes numerical user input and returns the sum.

echo "Hi. How many numbers do you want to add? Enter number:" 
read n
echo Ok.

count=0
sum=0
while [ $count -lt $n ]
do	
	count=`expr $count + 1`
	echo $'\n'$count $'\b)' Enter number to add:
	read  nn
	sum=`expr $sum + $nn`
done

echo $'\n'Here is the total: $sum$'\b'. Thanks.


