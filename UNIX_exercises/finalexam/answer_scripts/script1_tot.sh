#!/bin/bash

# exam section B) number 1.

echo $'\n'
echo Total support 2013: €`awk '{ tot += $2 } END { print tot }' companySupports2`
echo $'\n'
echo Total support 2012: €`awk '{ tot += $3 } END { print tot }' companySupports2`
echo $'\n'
echo Total support 2011: €`awk '{ tot += $4 } END { print tot }' companySupports2`
echo $'\n'

