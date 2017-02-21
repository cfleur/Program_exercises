# Catherine Fait 1403142
# This script prints the contents of a file in a specified manner.
#!/bin/bash

tr $'\t' '~' < companySupports > companySupports~
# this was just to see what/where the tab seperators were

file="companySupports"

grep -v "Tuki" $file | awk -F"\t" '{ print "Company: " $1 "\n Support 2013: " $2 ",\t Support 2012: " $3 ",\tSupport 2011: " $4 ",\tChange 2012-2013 %: " $5 }'
exit 0

