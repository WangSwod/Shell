#! /bin/bash/
#Description: Find out frequency of words in a file

if [ $# -ne 1 ];
then
echo "$0 fileName";
exit -1
fi

fileName=$1

grep -E -o "\b[[:alpha:]]+\b" $fileName | \
awk '{ count[$0]++ }
END{ 
	printf ("%-14s%s\n","Word","Count") ;
	for (ind in count)
	{ 	
		printf("%-14s%s\n",ind,count[ind]) ; 
	}
}'

