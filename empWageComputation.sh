echo "Welcome to Employee Wage Computation Program on Master Branch"
wagePerHr=20
fullDailyHr=8
partTimeHr=4
dailyWage=0
daysinMonth=20
wagePerMonth=0

for((i=1;i<=20;i++))
do
	attendance=$(($RANDOM%3))
	case $attendance in
					0)
						dailyWage=0
						;;
					1)
						dailyWage=$(($wagePerHr*$partTimeHr))
						;;
					2)
						dailyWage=$(($wagePerHr*$fullDailyHr))
						;;
	esac
	wagePerMonth=$(($wagePerMonth+$dailyWage))
done
echo "Monthly Wage= "$wagePerMonth
