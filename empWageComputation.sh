#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
isFullTime=1
isPartTime=2
wagePerHr=20

empCheck=$((RANDOM%3))

case $empCheck in
    $isFullTime)
        empHr=8
        ;;
    $isPartTime)
        empHr=4
        ;;
    *)
        empHr=0
        ;;
esac

salary=$(($empHr*$wagePerHr))
echo $salary

