#!/bin/bash
#useCase5
partTimeWageCalculator(){
	wage=20
	partTimeHour=4
	partTimeWage=$(($wage*$partTimeHour))
	return $partTimeWage
}

dailyFullyTimeWage(){
	wage=20
	fullHour=8
	fullTimeWage=$(($wage*$fullHour))
	return $fullTimeWage
}

echo "Enter the choice to calculate the monthly wages "
echo "1. full time  2. part time "
while :
do
	read input
	case $input in
		1) dailyFullyTimeWage
           ret=$?
           echo $((ret*20))
          ;;
        2) partTimeWageCalculator
			ret=$?
			echo $((ret*20))
          ;;
        *)
           echo "enter valid choice" 
	esac
done