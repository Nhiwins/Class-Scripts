#!/bin/bash

# define variables
output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
execs=$(sudo find / -type f -perm 777 2> /dev/null)


# lists
files=(
'/etc/shadow'
'/etc/passwd'
)

commands=(
'date'
'uname -a'
'hostname -s'
)


# check for directory existence
if [ ! -d $HOMEfor user in $(ls /home); do sudo -lU $user; done
[sudo] password for sysadmin: 
/research ]
then
	mkdir $HOME/research
fi

# check for output file
if [ -f $output ]
then
        > $output
fi


# useful loops, will list permissions on etc files
for file in ${files[@]}
do
	ls -l $file >> $output
done 

# loop to check sudo permissions
for user in $(ls /home)
do
	sudo -lU $user
done



echo "A Quick System Audit Script" >> $output

for x in ${0..2}
do 
	results=$(${$commands[$x]})
	echo "Results of \"${commands[$x]}\" command:"
	echo $results
	echo " "
	>> $output
done

echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "IP Info:" >> $output
echo -e "$ip \n" >> $output

echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who -a) \n" >> $output

echo -e "\nexec Files:" >> $output
echo $execs >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output
