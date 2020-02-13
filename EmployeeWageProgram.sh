#!/bin/bash
#useCase7
attendance=$$
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		#echo "Employee is present today"
		return 1
	else
		return 0
		#echo "Employee is absent today"
	fi	
}
calculatingWorkingHours(){
for((i=0;i<20;i++))
do
	checkAttendance
	result=$?
	if(($result==1))
	then
		count=$((count+1))
	fi
done
echo "Enter the choice to calculate the working hours "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) temp=$((count*8))
           echo " total hours $temp"
          ;;
        2) temp=$((count*4))
           echo "total hours $temp"
          ;;
        *)
           echo "enter valid choice" 
	esac
done
}
calculatingWorkingHours