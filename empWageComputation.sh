
declare -A days_dailyWage
echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isPartTime=2
wagePerHr=20
echo "Wage per Hour=20 Rs"
daysInMonth=20
workDays=0
read -p "Enter total number of days in a month:" num
for (( i=1;i<=num;i++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			dailyWageFull=$((8*20))
			days_dailyWage[$i]="$dailyWageFull"
			empHr=$(($empHr+8))
			((workDays++))
			;;
    	$isPartTime)
			dailyWagePart=$((4*20))
			days_dailyWage[$i]="$dailyWagePart"
			empHr=$(($empHr+4))
			((workDays++))
			;;
	   *)
			days_dailyWage[$i]="0"
        	empHr=$(($empHr+0))
        	;;
	esac
echo "Day $i =" ${days_dailyWage[$i]}
done
echo "Total worked days=$workDays"
echo "Total working Hours=$empHr"
if [ $(($empHr)) -ge 100 ]
then
	salary=$(($empHr * $wagePerHr))
	echo "Total Wage for a Month=$salary Rs."
else
	echo "Not completed working hours and working days"
fi
