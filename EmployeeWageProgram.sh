#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION "
#useCase1
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
#useCase2
dailyFullyTimeWage(){
    	fullHour=8
    	echo "$(($wage*$fullHour))"
	fullTimeWage=$(($wage*$fullHour))
	return $fullTimeWage
}
dailyFullyTimeWage
#useCase3
partTimeWageCalculator(){
	partTimeHour=4
	echo "$(($wage*$partTimeHour))"
	partTimeWage=$(($wage*$partTimeHour))
	return $partTimeWage
}
partTimeWageCalculator
#useCase4
echo "Enter the choice to calculate wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
	1) dailyFullyTimeWage
           	ret=$?
           	echo $ret
          ;;
        2) partTimeWageCalculator
		ret=$?
		echo $ret
          ;;
        *)
           echo "enter valid choice" 
	esac
done


