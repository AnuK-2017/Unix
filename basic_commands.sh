#!/bin/bash


##to execute this script go to directory where this file is present and then type ./file1.sh

name=Mumbai

echo "The name of city is $name and has ${#name} characters"

colors="red blue green"
# using \  ls --help |grep "\-U"



#using ` --this is used to assign the output of command within `` to a variable

let val1=500/2

val2=`echo $val1`

echo $val2

# using if statement

i=20
if [ "$i" -lt 10 ]
then :
else
echo "$i"
fi
###################################################

let var1=10*10
let var2=10**3 #exponential of 10
echo "$var1 $var2" 

###################################################

num1=10

echo $((num2=num1<1?1:0))
#using the same above sentence in if statement

if [ "$num1" -lt 1 ]
then
   num2=1
else
   num2=0
fi

echo "Result of if statement: $num2"


###################################################
echo \"{test1,test2,test3}\"

echo {0..9}  #using as for loop
###################################################
#if statement

var1=20

if [ "$var1" -gt 0 ] || [ "var1" -eq 20 ]
then
   echo "One or both conditions true"
else
  echo "Both conditions false"
fi

str1=""
str2="day"
str3="night"

if [ "$str1" ]; then
echo "str1 is null"
elif [ -z "$str1" ]; then
echo "str1 is  null"
else
echo "Strings are not same"
fi
####################################################
#setting variable values

for var1 in 1 2 3
do 
echo $var1
done
####################################################
#run this script as file1.sh 11 222 3333
echo '$#' $#      # this will print number of arguments passed
echo '$@' $@      # this will print the actual arguments passed
echo '$?' $?      # this will print the exit code of previous command
echo '${#@}' ${#@}   # this will print the length of input array passed
echo '$0' $0       # this will print the name of bash script
echo '$$' $$       # this will print the process id
echo hey thats large number
     pwd
##########################################################
#numbers

declare -r num1=5
num2=10

num3=$((num2+num1))
num4=$((num2-num1))
num5=$((num2*num1))
num6=$((num2/num1))

echo $num3

echo $((num3++))
echo $((++num3))
echo $num3
#################################################################3
#functions
getdate(){
date
return
}

getdate

getSum(){
 n1=$1
 n2=$2
 n3=$3
sum=$((n1+n2+n3))

echo $sum
}

i=2
j=5
k=8
sum=$(getSum $i $j $k)
echo "$sum"
################################################
[ -d samp_dir ] || mkdir samp_dir

