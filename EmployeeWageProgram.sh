#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION "
attendance=$$
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		echo "Employee is present today"
	else
		echo "Employee is absent today"
	fi	
}
wage=20
checkAttendance
dailyFullyTimeWage(){
    	fullHour=8
    	echo "$(($wage*$fullHour))"
}
dailyFullyTimeWage
partTimeWageCalculator(){
	partTimeHour=4
	echo "$(($wage*$partTimeHour))"
}
partTimeWageCalculator


