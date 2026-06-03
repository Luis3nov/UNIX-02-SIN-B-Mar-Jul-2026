#! /bin/bash
touch test && touch test123

(ls; ps)  # runs the ls and ps commands in a subshell, which means that any changes to the environment (like changing directories) won't affect the parent shell.

ls; ps; whoami

lzl || echo "el comando lzl falló"

ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt

$ ls -l / 1> stdout.txt 2> stderr.txt

lzl 2> error.txt
cat error.txt
