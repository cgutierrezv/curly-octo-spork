#!/bin/bash
# -*- coding: utf-8 -*-

ARCHIVO=$1


list_lin() {

	
	NUM_LIN=$(cat $ARCHIVO | wc -l)
	for (( i=0; i<=$NUM_LIN; i++ ))
	do
		lineas[$i]=$(awk 'NR=$i' $ARCHIVO)
	done
	return ${lineas[@]} 

}

list_lin

#for i in "${lineas[@]}"
for ((i=0;i<1;i++))
do
	
	echo "${lineas[$i]}" >> cop_tarea.py
	
	
done



 

#echo "$1"


