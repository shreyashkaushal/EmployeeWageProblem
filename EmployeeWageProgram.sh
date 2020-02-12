#!/bin/bash
partTimeWageCalculator(){
	wage=20
	partTimeHour=4
	#echo "$(($wage*$partTimeHour))"
	partTimeWage=$(($wage*$partTimeHour))
	return $partTimeWage
}

dailyFullyTimeWage(){
	wage=20
	fullHour=8
	#echo "$(($wage*$fullHour))"
	fullTimeWage=$(($wage*$fullHour))
	return $fullTimeWage
}

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

