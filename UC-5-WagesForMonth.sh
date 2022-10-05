#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfworkingdays=20
totalsalary=0

for (( day=1; day<=$numOfworkingdays; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isFullTime )
					empHrs=8
				;;
				$isPartTime )
					empHrs=4
				;;
				*)
					empHrs=0
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalsalary=$(($totalsalary+$salary))
done
	
	#echo $salary
	#echo $totalSalary
