#!/bin/bash

map (){
	command=$1
	shift
	for i do 
		$command "$i"
	done
}