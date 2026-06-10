#!/bin/bash

USER_INPUT="${1}"  # store first argument
if [[ -z "${USER_INPUT}" ]]; then  # check if argument is empty
  echo "You must provide an argument!"  # require an argument
  exit 1  # exit with error code
fi  # close first if
if [[ -f "${USER_INPUT}" ]]; then  # check if path is a file
  echo "${USER_INPUT} is a file."  # report file type
elif [[ -d "${USER_INPUT}" ]]; then  # check if path is a directory
  echo "${USER_INPUT} is a directory."  # report directory type
else  # if not file or directory
  echo "${USER_INPUT} is not a file or a directory."  # report unknown type
fi  # close second if


