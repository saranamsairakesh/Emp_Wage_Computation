echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$(($RANDOM%2))

if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi
