echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$(($RANDOM%3))
wagePerHr=20
fullDailyHr=8
partTimeHr=4
dailyWage=0
if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
	dailyWage=0
elif [ $attendance -eq 1 ]
then
	echo "Employee is Present Half Day "
	dailyWage=$(($wagePerHr*$partTimeHr))
else
	echo "Employee is Present Full Day"
	dailyWage=$(($wagePerHr*$fullDailyHr))
fi
echo "Daily Wage= "$dailyWage
