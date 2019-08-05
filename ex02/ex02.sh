#!/bin/bash

a=$( echo $1 | tr " " "\n" )

for i in $a
do
ls -R | grep -Fi $i || echo "the searched PATH is unexisting"
done