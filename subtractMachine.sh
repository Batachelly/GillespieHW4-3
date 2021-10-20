#!/bin/bash
#What this Bash script does:
#This Bash script takes 2 command line arguments and
#Subtracts the smaller from the larger and then prints out the difference to stdout
#Then Counts down from the difference to 1 while printing each count to stdout
#Example usage: ./subtractMachine 3 8

echo
echo "Starting the subtractMachine Bash Script"

ARG1=$1
ARG2=$2

#function
subtract() {

if [ $ARG1 -gt $ARG2 ]
then
        echo $ARG1 is larger then $ARG2
	echo Difference = $((counter= $ARG1 - $ARG2 ))
else
        echo $ARG2 is larger then $ARG1
	echo Difference = $((counter= $ARG2 - $ARG1 ))
fi
}


# if not used corectly

if [ $# -eq 0 ]; then
	echo "There are no arguments. Usage is:"
	echo -e " subtractMachine arg1 arg2 \n where arg1 and arg2 are integers "
	echo -e "Usage: \n subtractMachine 3 5 "
    exit 2
fi



echo
echo First argument is $1.
echo Second argument is $2.
echo
subtract $ARG1 $ARG2
echo
while [ $counter -gt 0 ]
do
        echo Count Down = $counter
        ((counter--))
done
