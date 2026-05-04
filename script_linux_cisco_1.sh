ls #it list files and directories in the current working directory
LS #"LS" is not the same as "ls", so this will produce an error
ls documents #list contents of a specific directory (Documents)
ls -l #Display a long (detailed) listing of files and directories
ls -r # List directory contents in reverse alphabetical order
ls -rl #combine options
aptitude moo #Run the aptitude package manager with a special "moo" argument
aptitude -v moo # Add verbose option (-v) to modify command behavior
aptitude -vv moo # Each additional "v" changes the output further, the easter egg is in the vvvvv
pwd #it Print the current working directory

cd Documents # Change the current working directory to the Documents directory
cd / # Change the current working directory to the root directory
cd /home/sysadmin
cd .. # Move one level up to the parent directory
cd ~ # Change to the current user's home directory
ls -l /var/log/ # Display a long detailed listing of the /var/log directory
ls -lt /var/log # The newest modified files are shown first
ls -l -S /var/log # The largest files are shown first
ls -lSr /var/log # The smallest files are shown first
su - # Switch to another user account using a login shell
exit # Exit the current shell session
sl # Run the sl command, in this case it needs sudo