#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROBLEM"
attendance=$$
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi	
}
checkAttendance
