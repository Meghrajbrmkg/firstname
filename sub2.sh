#!/bin/bash
echo "Enter the numbers"
read num1 num2
sub=$(( $num1 - $num2 ))
if [ $num1 -gt $num2 ];
then
	echo "the sub:$sub"
else 
	sub=$(( $num2 - $num1 ))
	echo "the sub:$sub"
fi

