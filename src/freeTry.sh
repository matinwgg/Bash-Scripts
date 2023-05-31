#!/bin/bash

:'let x=4 y=5 z=x*y u=z/2
echo $x  $y  $z  $u

#The declare method rerquires the -i option to do  INTEGER DECLARATION.

declare -i x=3 y=5 
echo $(($x ** $y))


command "echo -e " takes input on the next line
but with "echo -n" will take input on the same line
'

echo -n "First number: "
read x

echo -n "Second number: "
read y

echo " "

echo "$x plus $y equals $(($x + $y))"

echo "$x raised to the power $y equals $(($x ** $y))"



