echo "Welcome to Employee Wage Computation Program on Master Branch"
isPresent=1
wagePerHr=20
fullTimeHr=8
salary=0
randomNum=$((RANDOM%2))
if [ $randomNum -eq $isPresent ]
then
        echo "Employee Present"
	salary=$(($wagePerHr * $fullTimeHr))
	echo "Salary = $salary"
else
        echo " Employee Absent"
	echo "Salary = $salary"
fi


