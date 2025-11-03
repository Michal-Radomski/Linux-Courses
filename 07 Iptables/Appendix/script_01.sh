#!/bin/bash
# ( #! -> shebang )
clear

#* alias ll='ls -alF'

cat /etc/shells

echo $PATH
# echo $HOME
# env | grep USER
# env | grep SHELL

# printenv HOME

which bash    # Bash -> bash script-name.sh
which python3 # Python3 -> python3 script-name.py

os=Linux
distro="Ubuntu Linux"
age=30
server_name="Apache 2.4"

echo $age
echo $os
echo "I'm learning $distro" # Double quotes
echo "The value of \$os is $os"

my_distro="$os $distro"
echo $my_distro

set | grep Linux
# unset distro

# declare -r logdir="/var/low" #* -> read only variable

read -p "Enter your name: " name
echo $name

read -s -p "Enter password: " password
echo $password

num=10
if [ $num -gt 10 ]; then
  echo "Number is greater than 10"
elif [ $num -eq 10 ]; then
  echo "Number is exactly 10"
else
  echo "Number is less than 10"
fi

str="hello"
if [ "$str" == "hello" ]; then
  echo "String is hello"
elif [ "$str" == "world" ]; then
  echo "String is world"
else
  echo "String is something else"
fi

read -p "Enter your age: " age
read -p "Enter your membership status (yes/no): " member

# Check if age is a positive number and less than or equal to 120
if [[ $age -gt 0 && $age -le 120 ]]; then
  echo "Valid age entered."

  # Nested if to check membership status
  if [[ $member == "yes" ]]; then
    # Multiple conditions using elif inside nested if
    if [[ $age -lt 18 ]]; then
      echo "You are a minor member."
    elif [[ $age -le 65 ]]; then
      echo "You are an adult member."
    else
      echo "You are a senior member."
    fi

  elif [[ $member == "no" ]]; then
    echo "You are not a member."
  else
    echo "Invalid membership status entered."
  fi

else
  echo "Invalid age entered."
fi
