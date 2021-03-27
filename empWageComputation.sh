echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$(($RANDOM%3))
wagePerHr=20
fullDailyHr=8
partTimeHr=4
dailyWage=0

case $attendance in
				0)
					echo "Employee is Absent"
					;;
				1)
					echo "Employee is Present Half Day"
					dailyWage=$(($wagePerHr*$partTimeHr))
					;;
				2)
					echo "Employee is Present Full Day"
					dailyWage=$(($wagePerHr*$fullDailyHr))
					;;
esac

echo "Daily Wage= "$dailyWage
