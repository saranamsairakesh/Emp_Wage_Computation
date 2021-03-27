echo "Welcome to Employee Wage Computation Program on Master Branch"
wagePerHr=20
fullDailyHr=8
partTimeHr=4
dailyWage=0
daysinMonth=20
wagePerMonth=0
noOfDays=1
noOfHours=0
partTimeCount=0

while [ $noOfDays -lt 20 ] && [ $noOfHours -lt 100 ]
	do
		attendance=$(($RANDOM%3))
		case $attendance in
			0)
				dailyWage=0
				;;
			1)
				dailyWage=$(($wagePerHr*$partTimeHr))
				noOfHours=$(($noOfHours+4))
				partTimeCount=$(($partTimeCOunt+1))
				if [ $partTimeCount -eq 2 ]
				then
					partTimeCount=0
					noOfDays=$(($noOfDays+1))
				fi
				;;
			2)
				dailyWage=$(($wagePerHr*$fullDailyHr))
				noOfHours=$(($noOfHours+8))
				noOfDays=$(($noOfDays+1))
				;;
	esac
	wagePerMonth=$(($wagePerMonth+$dailyWage))
done

echo "No of Hours= "$noOfHours", No of Days= "$noOfDays", Monthly Wage= "$wagePerMonth
