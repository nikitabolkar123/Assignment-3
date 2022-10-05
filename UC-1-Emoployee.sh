#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if (( $isPresent == $randomCheck ))
then
	echo "employee present"
else
	echo "employee no present"
fi

