#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isPartTime=2
wagePerHr=20
echo "Wage per Hour=20 Rs"
daysInMonth=20
workDays=0
for (( i=1;i<=30;i++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			empHr=$(($empHr+8))
			((workDays++))
			;;
    $isPartTime) 
			empHr=$(($empHr+4))
			((workDays++))
			;;
    *)
        empHr=$(($empHr+0))
        ;;
	esac
done
if [ $empHr -ge 100 ] || [ $workDays -ge 20 ]
then
	echo "Total working Hours=$empHr"
	salary=$(($empHr*$wagePerHr))
	echo "Total Wage for a Month=$salary Rs."
else
	echo "Not completed working hours and working days"
fi
