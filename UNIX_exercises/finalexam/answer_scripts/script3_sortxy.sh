#!/bin/bash

# Exam section C) number 1.

y2l=$(sort -k2n data1 | head -1 | awk '{print $2}')
y2h=$(sort -k2nr data1 | head -1 | awk '{print $2}')
x2l=$(sort -k2n data1 | head -1 | awk '{print $1}')
x2h=$(sort -k2nr data1 | head -1 | awk '{print $1}')

echo Y highest value: $y2h $'\n'
echo Y lowest value: $y2l $'\n'
echo X highest value: $x2h $'\n'
echo X lowest value: $x2l $'\n'

