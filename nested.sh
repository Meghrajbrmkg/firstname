#!/bin/bash
echo -n "Enter your Kannada marks:"
read mark1
echo -n "Enter your English marks:"
read mark2
echo -n "Enter your Hindi marks:"
read mark3
if [ $mark1 -ge 35 -a $mark2 -ge 35 -a $mark3 -ge 35 ];
then
	total=$(( $mark1 + $mark2 + $mark3 ))
	avrage=$(( $total / 3 ))
	echo "total marks=$total"
	echo "avrage=$avrage"
	if [ $avrage -gt 75 ];
	then
		echo "Congrats Gagandeep you got Distinction"
	elif [ $avrage -gt 60 -a $avrage -lt 75 ];then
		echo "Congrats you got First Class"
	elif [ $avrage -gt 50 -a $avrage -lt 60 ];then
		echo "You got Second Class"
	elif [ $avrage -gt 35 -a $avrage -lt 50 ];then
		echo "you got Third Class"
	else [ $avrage -lt 35 ];
		echo "Your are Failed"
	fi
fi
