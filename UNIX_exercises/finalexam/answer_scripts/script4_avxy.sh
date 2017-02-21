#!/bin/bash

# Exam section C) number 2.
lines=$(grep "," data1 | wc -l)

totx=$(awk '{ tot += $1 } END { print tot }' data1)
toty=$(awk '{ tot += $2 } END { print tot }' data1)

echo $lines $totx $toty

