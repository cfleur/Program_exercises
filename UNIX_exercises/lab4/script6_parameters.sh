#!/bin/bash

echo "Hi. Whats your name?"
read name
echo "Enter your birthyear:"
read -n4 year

today=`date +"%Y"`

while  [[ $((year)) != $year ]];
do 
	echo $'\nThat was not a number. Enter your birthyear:'
	year=0
	read -n4 year
done

while [[ $year -gt $today || $year -lt 1900 ]];
do
   	echo $'\n'Thats impossible. Enter your birthyear:
   	year=0
 	read -n4 year

done
	age=`expr $today - $year` 
echo $'\n'$name, this year you will be $age years old.
