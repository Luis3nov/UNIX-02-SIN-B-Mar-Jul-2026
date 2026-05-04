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

ls -l hello.sh # Display detailed information about hello.sh
./hello.sh # Try to execute the hello.sh script from the current directory
# This fails if the file does not have execute permission
chmod u+x hello.sh # Add execute permission for the file owner
sudo chown root hello.sh # Change the owner of hello.sh to root
cat animals.txt # Display the full contents of animals.txt
cat alpha.txt # Display the full contents of alpha.txt
head alpha.txt # Display the first 10 lines of alpha.txt
tail alpha.txt # Display the last 10 lines of alpha.txt
head -n 5 alpha.txt # Display the first 5 lines of alpha.txt
dd if=/dev/zero of=/tmp/swapex bs=1M count=50 # Create a 50 MB file filled with zero bytes
dd if=/dev/sda of=/dev/sdb # Copy one entire disk to another at the block level