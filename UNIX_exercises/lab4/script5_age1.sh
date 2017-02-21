#!/bin/bash
echo Enter your name:
read name
echo Enter your age:
read age
echo "Has your birthday passed yet? (y/n)"
read ans
today=`date +"%Y"`
year=`expr $today - $age`
if [ "$ans" = "y" ]; then
	year=$year
#	echo yes
elif [ "$ans" = "n" ]; then
	year=`expr $year - 1`
# 	echo no
else
	echo "Sorry, you didn't answer yes or no."
	exit 0
fi
echo $name, you were born in $year.

