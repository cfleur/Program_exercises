#!/bin/bash
echo Enter your name:
read name
echo Enter your birthyear:
read year
echo "Has your birthday passed yet? (y/n)"
read ans
today=`date +"%Y"`
age=`expr $today - $year`
if [ "$ans" = "y" ]; then
	age=$age
elif [ "$ans" = "n" ]; then
	age=`expr $age - 1`
else
	echo Please try again.
fi
echo $name, you are $age years old.

