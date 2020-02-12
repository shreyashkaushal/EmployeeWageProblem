#!/bin/bash
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
checkAttendance

