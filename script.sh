ls -a and ls --all #is the same
ls -a / # it shows all the files
ls -l #Shows detailed information about each file.
ls -a #Lists all files, including hidden ones.
ls -h #Lists all files, including hidden ones.
ls -lah

mkdir -- -rf #here we create a file, we have to use -- to indicate that is name
rmdir -r -- -rf #then we delete the file, rmdir only delete empty files

ls -help #and this gives me explanations
man ls #this is the complete manual

--depth #Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.

chmod +x script.sh #It adds execution permission to script.sh.
chmod u+x script.sh #It adds execution permission only to the file owner.
chmod o-r secreto.txt #It removes read permission from other users.
chmod u+rw,go-rwx script.sh #Only the owner will be able to read and write. No one else will have access.

sudo echo "hola" > /etc/archivo_protegido #`it execute hola and write it in a file. but 'sudo` applies to `echo`, but the redirection `>` is handled by the shell. that's why you get the "permission denied" error.
sudo echo "hola" | sudo tee /etc/archivo_protegido #it create or overwrite the file with hola.
sudo echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #it made the same of the previous but send the output to nothing
sudo cat /etc/archivo_protegido #this print the file in the terminal

sudo sh -c 'echo "chao" >> /etc/archivo_protegido' #and here we add chao at the end of the file

sudo su #this enter as root with a clean root environment and with all sudo privileges

echo "$HOME" #uses double quotes, inside double quotes, the shell expands variables so $HOME is replaced by the value of your home directory
echo '$HOME' #uses single quotes, inside single quotes, the shell treats everything as literal text so $HOME is not expanded