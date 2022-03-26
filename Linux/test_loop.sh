#!/bin/bash

# variables
states=('Arizona' 'Oregon' 'Texas' 'Ohio' 'Iowa')
nums=(echo {0..9})
ls_out=$(ls)

execs=$(find /home -type f -perm 777 2>/dev/null)

# loop to find hawaii

for states in ${states[@]}; do 
	if [ $state == "Hawaii"]
	then
		echo "Hawaii is the best!"
	else
		echo "I'm not fond of Hawaii."
	fi
done


# loop to fin 3, 5 , 7
for num in ${nums[@]}
do
	if [ $num = "3" ] || [ $num = "5" ] || [ $num = "7" ]
	then
		echo $num
	fi
done

# loop to print out each item thats visible

for x in ${ls_out[@]}
do
	echo $x
done


#Bonus Create loop to print out execs on one line for each

for execs in ${execs[@]}
do
	echo $exec
done
