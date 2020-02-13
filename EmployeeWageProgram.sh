#!/bin/bash
#useCase6
wage=20
partTimeWageCalculator(){
	partTimeHour=4
	partTimeWage=$(($wage*$partTimeHour))
	return $partTimeWage
}

dailyFullyTimeWage(){
	fullHour=8
	fullTimeWage=$(($wage*$fullHour))
	return $fullTimeWage
}
count=0
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
for((i=0;i<20;i++))
do
	checkAttendance
	result=$?
	if(($result==1))
	then
		count=$((count+1))
	fi
done
#echo $count
echo "Enter the choice to calculate the monthly wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) dailyFullyTimeWage
           ret=$?
           #echo $((ret*count))
           temp=$((count*8))
           if(($temp<100))
           then
           	echo $((ret*count))
           else
           	echo $((ret*100))
           	fi 
          ;;
        2) partTimeWageCalculator
			ret=$?
			echo $((ret*count))
          ;;
        *)
           echo "enter valid choice" 
	esac
done