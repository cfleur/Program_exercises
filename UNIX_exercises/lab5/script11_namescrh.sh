# Catherine Fait 1403142
# This script prints the contents of a file according to an aplhabetic name search.
#!/bin/bash


file="companySupports"
echo "Enter characters in name (case insensitive):"

while read  chars; do
	echo $'\n>>>' You entered $chars. $'\n'
	grep -i "$chars" $file | awk -F"\t" '{ printf("Company Name: %-40s\nSupport 2013: %4s\nSupport 2012: %4s\nSupport 2011: %4s\nChange 2012-2013 %: %4s\n******************************\n", $1,$2,$3,$4,$5) }'
	exit 0
done
