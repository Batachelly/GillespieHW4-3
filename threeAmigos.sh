#!/bin/bash

# Joshua Gillespie
# hw4 CPE_422
# This Bash script takes 4 command line arguments and sums the first
# three numbers
# Then it executes subtractMachine.sh where the sum of the first three numbers 
# is the first argument and the second is the fouth command line argument that was supplied.
# For easy access, keep subtractMachine.sh is the same directory as threeAmigos.sh.
# Example usage: ./threeAmigos.sh 5 5 5 4

echo #space
echo "Starting the threeAmigos.sh Bash Script" #Stating the start of the program
if [ $# -eq 0 ]; then #if used wrong then explain echo how to use the program.
 echo "There are no arguments. Usage is:"
 echo -e " threeAmigos.sh arg1 arg2 arg3 arg4 \n where argX are integers "
 echo -e "Usage: \n ./threeAmigos.sh 5 5 5 4 "
 exit 2
fi

sum=$(( $1+$2+$3 ))
echo Sum = $sum
./subtractMachine.sh $4 $sum

echo "Ending the threeAmigos.sh Bash Script" #Stating the end of the program
