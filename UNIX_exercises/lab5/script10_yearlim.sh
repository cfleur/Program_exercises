# Catherine Fait 1403142
# This script prints specific contents of a file.
#!/bin/bash

echo "Enter year (2013/2012/2011):"
read year
echo "Enter a maximum amount of money in euro:"
read amount
echo $'\n'
file="companySupports"

awk 'BEGIN{ FS=OFS="\t" } { gsub(/ /,"",$2); gsub(/ /,"",$3); gsub(/ /,"",$4); gsub(/ /,"",$5); print $1,$2,$3,$4,$5 }' companySupports > companySupports2

file="companySupports2"
# gsub(/-/,"0",$2); gsub(/-/,"0",$3); gsub(/-/,"0",$4); 
#printf("%-40s %10s %10s %10s %7s\n", $1,$2,$3,$4,$5) }

if [ "$year" = "2011" ] 
then
	awk --assign a=$amount -F"\t" '$4 <= a' $file | awk -F"\t" '{ printf("%-40s %15s\n",$1,$4) }'
	awk --assign a=$amount -F"\t" '$4 <= a' $file | echo ****************$'\n'`wc -l` companies under €$amount $'\b'.$'\n'****************$'\n'
	  
elif [ "$year" = "2012" ] 
then
        awk --assign a=$amount -F"\t" '$3 <= a' $file | awk -F"\t" '{ printf("%-40s %15s\n",$1,$3) }'
        awk --assign a=$amount -F"\t" '$3 <= a' $file | echo ****************$'\n'`wc -l` companies under €$amount $'\b'.$'\n'****************$'\n'

	
elif [ "$year" = "2013" ] 
then
        awk --assign a=$amount -F"\t" '$2 <= a' $file | awk -F"\t" '{ printf("%-40s %15s\n",$1,$2) }'
        awk --assign a=$amount -F"\t" '$2 <= a' $file | echo ****************$'\n'`wc -l` companies under €$amount $'\b'.$'\n'****************$'\n'

else
	echo Invalid. Start again.
fi
