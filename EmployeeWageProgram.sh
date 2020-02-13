#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION "
declare -a fullTimeWagesArr
declare -a partTimeWagesArr
#useCase1
attendance=$$
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then


		echo "Employee is present today"
		return 1
	else
		return 0
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
#useCase5
count=0
for((i=0;i<20;i++))
do
	checkAttendance
	result=$?
	if(($result==1))
	then
		count=$((count+1))
	fi
done
echo "Enter the choice to calculate the monthly wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) dailyFullyTimeWage
           ret=$?
           echo $((ret*count))
          ;;
        2) partTimeWageCalculator
			ret=$?
			echo $((ret*count))
          ;;
        *)
           echo "enter valid choice" 
	esac
done
#useCase6
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

#useCase7
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
#useCase8
count=0
for((i=0;i<20;i++))
do
	checkAttendance
	result=$?
	if(($result==1))
	then
		fullTimeWagesArr[$i]=160
		partTimeWagesArr[$i]=80
		count=$((count+1))
	else
		fullTimeWagesArr[$i]=0
		partTimeWagesArr[$i]=0
    fi

done
totalwage=$$
echo "Enter the choice to calculate the total wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) totalwage=$((count*160))
           echo " daily wages are ${fullTimeWagesArr[*]}"
           echo " total full time wages $totalwage "
          ;;
        2) totalwage=$((count*80))
           echo " daily wages are ${partTimeWagesArr[*]}"
           echo "total part time wages $totalwage"
          ;;
        *)
           echo "enter valid choice" 
	esac
done
}
#useCase9
count=0
echo "List of days -"
for((i=1;i<=20;i++))
do
	checkAttendance
	result=$?
	if(($result==1))
	then
		fullTimeWagesArr[$i]=160
		echo "day $i present"
		partTimeWagesArr[$i]=80
		count=$((count+1))
	else
		echo "day $i absent"
		fullTimeWagesArr[$i]=0
		partTimeWagesArr[$i]=0
    fi

done
totalwage=$$
echo "Enter the choice to calculate the total wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) totalwage=$((count*160))
           echo " daily wages are ${fullTimeWagesArr[*]}"
           echo " total full time wages $totalwage "
          ;;
        2) totalwage=$((count*80))
           echo " daily wages are ${partTimeWagesArr[*]}"
           echo "total part time wages $totalwage"
          ;;
        *)
           echo "enter valid choice" 
	esac
done
}