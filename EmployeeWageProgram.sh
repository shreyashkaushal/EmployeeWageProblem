#!/bin/bash
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
