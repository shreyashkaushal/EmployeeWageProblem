#!/bin/bash
#useCase9
declare -a fullTimeWagesArr
declare -a partTimeWagesArr
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

