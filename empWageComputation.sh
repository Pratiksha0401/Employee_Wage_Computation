#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isPartTime=2
wagePerHr=20
echo "Wage per Hour=20 Rs"
daysInMonth=20
workDays=0
function getWorkHours()
{
for (( i=1;i<=num;i++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			empHr=$(($empHr+8))
			;;
    $isPartTime) 
			empHr=$(($empHr+4))
			;;
    *)
        empHr=$(($empHr+0))
        ;;
	esac
done
echo "$empHr"
}
read -p "Enter number of days in a month : " num
workHours="$(getWorkHours $((num)))"
if [ $(($workHours)) -ge 100 ]
then
	echo "Total working Hours=$workHours"
	salary=$(($workHours * $wagePerHr))
	echo "Total Wage for a Month=$salary Rs."
else
	echo "Not completed working hours and working days"
fi
