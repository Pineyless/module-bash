#!/bin/bash

sum=0

if [ "$1" == "-s" ]; then
	shift
	for i do 
		sum=$((sum + i))
	done
	echo "$sum"
elif [ "$1" == "-e" ]; then
	shift
	for i do 
		if ! (( i % 2 )); then
		        sum=$((sum + i))
		fi
	done
	echo "$sum"
elif [ "$1" == "-o" ]; then
	shift
	for i do 
		if (( i % 2 )); then
		        sum=$((sum + i))
		fi
	done
	echo "$sum"
elif [ "$1" == "-m" ]; then
	shift
	for i do 
		sum=$((sum + i))
	done
	echo $((sum/$#))
else 
        echo "Error.."
		exit 1
fi


