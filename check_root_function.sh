#!/bin/bash
# This function checks if the current user ID equals zero.
check_if_root(){ # define function
if [["${EUID}" -eq "0"]]; then # check if user ID is zero
 return 0 # return success
 else # if user ID is not zero
 return 1 # return failure
 fi
}
if check_if_root; then # call function and check return value
 echo "User is root!" # print message if user is root
else 
 echo "User is not root!" # print message if user is not root
fi

# adduser luchito
# su - luchito
# bash check_root_function.sh