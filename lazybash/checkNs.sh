#!/bin/bash

# @hironogawa: Maybe or maybe not usful
# Notes: Maybe add a script to replace a array devided by comma
# Details: checkNS, v1.0 
# Use case: Check all IP's from a list and paste it in the prompt

# concate in a while loop all domains to allUrls
allUrls=("") # you could place all your domains seperated by space " " in this variable ex. allUrls=("hironogawa.com another.com")

echo "Hello $USER"
echo "Looking up some domains? Hit enter after your input."


while [ ! "$domainInput" == "q" ];
do
	read domainInput
	if [ ! "$domainInput" == "q" ]; 
	then
		allUrls+="${domainInput} "
		echo "Another one?! or type q and hit enter"
	else
		echo "Here is you request: "
	fi
	
done

echo "The Array: ${allUrls}"

for i in "${allUrls[@]}"
do
	nslookup $i
done
