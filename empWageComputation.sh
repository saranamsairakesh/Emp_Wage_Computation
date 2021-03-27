echo "Welcome to Employee Wage Computation Program on Master Branch"
declare -A dailyWageArray
declare -A totalWageArray

wagePerHr=20
fullDailyHr=8
partTimeHr=4
dailyWage=0
daysinMonth=20
wagePerMonth=0
noOfDays=1
noOfHours=0
partTimeCount=0

function workHours(){
	local attendance=$1
	if [ $attendance -eq 0 ]
	then
		workHours=0
	elif [ $attendance -eq 1 ]
	then
		workHours=$partTimeHr
	else
		workHours=$fullDailyHr
	fi
	echo $workHours
}

echo $workHours
while [ $noOfDays -lt 20 ] && [ $noOfHours -lt 100 ]
	do
		attendance=$(($RANDOM%3))
		workHours=" $( workHours $(($attendance)) )"
		case $attendance in
			0)
				dailyWage=0
				;;
			1)
				dailyWage=$(($wagePerHr*$partTimeHr))
				partTimeCount=$(($partTimeCOunt+1))
				if [ $partTimeCount -eq 2 ]
				then
					partTimeCount=0
					noOfDays=$(($noOfDays+1))
				fi
				;;
			2)
				dailyWage=$(($wagePerHr*$fullDailyHr))
				noOfDays=$(($noOfDays+1))
				;;
	esac
	noOfHours=$(($noOfHours+$workHours))
	wagePerMonth=$(($wagePerMonth+$dailyWage))
	dailyWageArray[$noOfDays]=$dailyWage
	totalWageArray[$noOfDays]=$wagePerMonth
done

echo "No of Hours= "$noOfHours", No of Days= "$noOfDays", Monthly Wage= "$wagePerMonth

for((i=1;i<=$noOfDays;i++))
do
	echo "Day: "$i", Daily Wage: "${dailyWageArray[$i]}", Total Wage: "${totalWageArray[$i]}
done
