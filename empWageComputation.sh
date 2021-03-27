echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$(($RANDOM%2))
wagePerHr=20
fullDailyHr=8
dailyWage=$(($wagePerHr*$fullDailyHr*$attendance))
if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi
echo "Daily Wage= "$dailyWage
