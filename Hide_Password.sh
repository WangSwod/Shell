#! /bin/sh

echo "Enter password:"

#using -echo  parameter to avoid outputting the data to stdin
stty -echo

read password

#allow outputting the data to stdin
stty echo

echo
echo Password read.
