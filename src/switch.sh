#! /bin/bash

echo -e "What your count? "
read count

case $count in
	10)
		echo "You were tenth";;
	9)
		echo "You were ninth";;	
	8)
		echo "You were eighth";;
	7)
		echo "You were seventh";;
	6)
		echo "You were sixth";;
	5)
		echo "You were fifth";;
	4)
		echo "You were fourth";;
	3)
		echo "You were third";;
	2)
		echo "You were second";;
	1)
		echo "You were first";;
	*)
	
	echo "****Out of bounds****";;
	esac
