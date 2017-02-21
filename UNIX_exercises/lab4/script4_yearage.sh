#!/bin/bash
echo Enter your birthyear:
read year
age=`expr 2016 - $year`
echo This year you will be $age.
