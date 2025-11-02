#!/bin/bash

#a variable with  a list of values. space is the value separator
IPS="129.55.3.4 10.0.0.1 5.5.5.5 4.4.4.4"

#$ in front of the variable name gets the value of that variable
echo "The value of variable IPS is $IPS"

#######BUILT-IN VARIABLES####################
#$1 is the first argument of the script
#\ escape the $ char (it will print $1 literally)
echo "\$1 is $1"

#$2 is the first argument of the script
echo "\$2 is $2"

#$3 is the first argument of the script
echo "\$3 is $3"

#$4 is the first argument of the script
echo "\$4 is $4"

#$# represents the no. of arguments the script was called with
echo "\$# is $#"
################################################
#iterate through the list of IPs
#a variable named IP is created and in every loop it has a value from the list
for IP in $IPS; do
  echo "IP is $IP"
done

#if no . of arguments not equals 0
if [ $# -ne 0 ]; then

  #if first script argument equals
  if [ $1 -eq 55 ]; then
    echo "\$1 is 55"
  else
    echo "\$1 is not 55"
  fi

else
  echo "script was run without arguments"
fi

echo -n "Enter something:"
read MYVARIABLE
echo "You entered $MYVARIABLE"

#----
#script usage: ./block_from_ip IP_ADDRESS_TO_BE DROPPED
#Ex: ./block_from_ip 80.0.0.0/16

#$1 is the first argument of the script
echo "Dropping packets from $1"

#drops any incoming packet from the IP or network address, that was specified as the script 1st argument
iptables -I INPUT -s $1 -j DROP
echo "Done"

#---
#$1 is the protocol we are blocking (TCP or UDP)
#$2 is the port we are blocking
#Usage: ./block_service.sh tcp 8080

#$# represents the no. of script argument
#if run with 2 arguments
if [ $# -eq 2 ]; then
  echo "Blocking $1 port $2"
  #block that protocol & port
  iptables -I INPUT -p $1 --dport $2 -j DROP
  echo "Done"
else #if not run with 2 arguments
  echo "The script has been  run with the wrong number of arguments"
fi
