#!/bin/bash

if [ $# -ne 4 ]; then
        exit 1
fi

file_name=$1

shift 

for i do 

	echo "$i" "$(grep -c "$i" "$file_name")"

	awk '/'"$i"'/{print NR}' "$file_name"
done