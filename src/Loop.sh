#!/bin/bash
#demo for loop1 
if test $# -eq 0
then
	echo "Wrong Syntax \n Use **$0 Number**"
exit 1
fi

for x in 1 2 3 4 5
	do
	  echo `expr $1 * $x`
done	  	
	
