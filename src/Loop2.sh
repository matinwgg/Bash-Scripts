echo -e "Limit: "
read number
echo " "

for x in {1..20..2}
do 
	if [ $x -eq $number ];
	then
		break
	fi	
	echo $x 
done	
