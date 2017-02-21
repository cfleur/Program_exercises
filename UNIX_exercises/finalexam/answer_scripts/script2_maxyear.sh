
#!/bin/bash

# exam section B) number 2.

echo Enter year:
read year

while [[ $((year)) = $year ]]; # this checks if input is a number by setting the integer equal to itself.
do

if [ "$year" = "2011" ]
then

echo `sort -k1nr companySupports2 | head -1 | awk '{ print "Company: " $1 "\nMax support 2011: €" $4 }'`
exit 0
      
elif [ "$year" = "2012" ]
then

echo `sort -k3nr companySupports2 | head -1 | awk '{ print $1 "\tMax support 2012: €" $3 }'`
exit 0

elif [ "$year" = "2013" ]
then

echo `sort -k2nr companySupports2 | head -1 | awk '{ print $1 "\tMax support 2013: €" $2 }'`
exit 0

else
        echo Invalid. Start again. Enter year or 9 to exit: 
	year=0
	read year
	exit 9
fi
done


