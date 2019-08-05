#!/bin/bash

if [ $# -ne 2 ]; then
        exit 1
fi


find -name "$2"|while read fname; do
  echo $(basename "$fname")
  
  awk '/'"$1"'/{print NR}' "$fname"
done