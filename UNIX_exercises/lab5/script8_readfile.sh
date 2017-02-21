# Catherine Fait 1403142
# This script reads contents of a file line by line
#!/bin/bash

to_read="companySupports"

while read line
do
	echo "$line"
done<$to_read
