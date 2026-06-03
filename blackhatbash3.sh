#!/bin/bash
book="black hat bash"  # creates a variable named book

echo "This book's name is ${book}"
echo "This book's name is $book"

root_directory=$(ls -ld /)   # saves information about the root directory in a variable

echo "${root_directory}"

book="Black Hat Bash"
unset book
echo "$book"