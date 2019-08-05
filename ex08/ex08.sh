#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Too many(few) arguments"
                exit 1
elif [ ! -f "$1" ]; then
        echo "Error.."
                exit 1
else
        numbers=( zeroes ones twoes threes fours fives sixs sevens eights nines)
        for i in $(seq 0 9); do
             printf "%s %s" "$( grep -o "$i" "$1" | wc -l )" "${numbers[i]}"
                if [ "$i" -ne 9 ]; then
                        printf ", "
                fi
        done
        echo ""
fi