#!/bin/bash

if [ $# -ne 1 ]; then
        exit 1
elif [ "$1" = "0" ]; then
        exit 1
fi

if [[ $(head -n "$1" resourses/surnames.txt | grep -v "Q-Chem") ]]; then
        head -n "$1" resourses/surnames.txt | grep -v "Q-Chem" | sed 's/ - /  /g' | sed 's/\,//' | sed 's/\.//'
else
    echo ''
fi
