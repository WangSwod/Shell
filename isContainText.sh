#! /bin/bash/
#Description: testing if a file contains a text or not 

if [ $# -ne 2 ];
then
echo "$0  text fileName"
fi

text=$1
fileName=$2

grep -q $text $fileName

if [ $? -eq 0 ];
	then 
	echo "The text exists in the file"
	else 
	echo "The text does not exist in the file"
fi


