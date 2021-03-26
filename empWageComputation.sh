#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isPartTime=2
wagePerHr=20
fullTimeHr=8
partTimeHr=4
salary=0
randomNum=$((RANDOM%3))
if [ $randomNum -eq $isFullTime ]
then
   echo "Employee Present Full Time"
	salary=$(($wagePerHr * $fullTimeHr))
	echo "Salary = $salary"
elif [ $randomNum -eq $isPartTime ]
then
	echo "Employee Present for Part time"
   salary=$(($wagePerHr * $partTimeHr))
   echo "Salary = $salary"
else
   echo " Employee Absent"
	echo "Salary = $salary"
fi
