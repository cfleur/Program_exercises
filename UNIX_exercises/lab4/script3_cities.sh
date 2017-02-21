#!/bin/bash
echo "Lagos 17060307
Shanghai 24150000
Dhaka 12043977
Guangzhou 12700800
Beijing 21150000
Mumbai 12655220
Karachi 23500000
Moscow 12111194
Delhi 17838842
Istanbul 14160467" > citylist.txt
#for sort -k2nr citylist.txt; do
#	echo `head -3 citylist.txt`
#done
#^ worked at school, now it doesn't :/
sort -k2nr citylist.txt | head -3

