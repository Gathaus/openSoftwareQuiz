#!/bin/bash

read -p "Please enter a value " value

if [ $((value%2)) -eq 0 ]
then
  echo "Value not perfect"
  
else
  for (( i=1 ; i<=$value;  i+=2))
do
	  for ((k=1 ; k<=$(( ( $value - i ) / 2 )); k++))
	do
	 echo -n " "
	done
	
	for ((k=1 ; k<=i; k++))
	do
	echo -ne "*"
	done
	echo
done
	for((i=$(($value / 2 + $value / 2 -1)); i>=1; i-=2))
	do
		for((k=1; k<=$(( ( $value - i ) / 2 )); k++))
		do
		echo -n " "
		done
		
		for((k=1; k<=i; k++))
		do
		echo -ne "*"
		done
		echo
	done
fi