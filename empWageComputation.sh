echo "Welcome to Employee Wage Computation Program on Master Branch"
isPresent=1
randomNum=$((RANDOM%2))
if [ $randomNum -eq $isPresent ]
then
        echo "Employee Present"
else
        echo " Employee Absent"
fi


