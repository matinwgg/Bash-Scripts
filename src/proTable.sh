#!/bin/bash

echo -n "What's your number? "
read w
for x in 1 2 3 4 5
do 
	echo `expr $1 \* $x`
done

