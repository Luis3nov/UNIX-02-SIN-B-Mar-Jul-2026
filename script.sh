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

echo '#!bin/sh' > hola.sh #here we create a file hola.sh and we write '#!bin/sh into that file
echo 'echo "Hola desde mi primer script"' >> hola.sh #here we add "Hola desde mi primer script" to the end of the file
cat hola.sh #here we print the content of the file in the terminal
./hola.sh #this open the hola.sh as a shell but we dont have permissions

ls -l hola.sh # this shows detailed information about the file hola.sh
chmod +x hola.sh #this adds execute permission to the file
ls -l hola.sh #we use this again to check the permissions
./hola.sh #and now this commands works

ls /etc #here we list the contents of the /etc directory.
sudo touch /etc/prueba.txt #here an empty file called test.txt is created inside /etc, but we need to add sudo
mkdir ~/mi_carpeta #create a file mi_carpeta into home so we dont need sudo
sudo apt update #here we update the package list, we need sudo to have all the permissions
sudo apt install cowsay #here we install a program we need sudo also 

touch prueba.txt #here we create a empty file called prueba.txt
chmod 600 prueba.txt #here we change the permissions, the user that create the file can read and write, the other and the group dont have any permission
ls -l prueba.txt #here we check the permissions
chmod 755 prueba.txt #here we again change the permissions, we add to the user all the permissions and the group and other can read and execute
ls -l prueba.txt #and again we check the permissions

umask #umask controls default file directory permissions by removing specific permissions automatically when they are created
touch archivo 1 #it create an empty file. if it already exists, simply update its timestamp. and default permissions: depend on the current umask.
mkdir directorio1 #it create a directory also with the permissions with de actual umask.
ls -l #it list all de files and directories and permissions
umask 027 #it modify the default permissions.
touch archivo2 #it again create an empty file with default permissions asignedd by umask
mkdir directorio2 #then we create a new directory
ls -l #it list all de files and directories and permissions
umask 077 #then we modified the default permissions again
touch secreto.txt #then we create a new empty file
mkdir privado #and we create a new diretory, we can see that the permissions were modified

sudo chown -R $(whoami) . #it change the owner of all files and folders in the current directory to your user.
sudo setfacl -bnR . #it removes all custom ACL permissions from all files and folders.
echo "Hola" > mi_archivo
ls -l mi_archivo

sudo useradd -m -s /usr/bin/zsh luna #here we create a user called luna, with a home directory and the shell configured as zsh
sudo chown luna mi_archivo #(change owner) we change the owner of mi_archivo file
ls -l mi_archivo #here we list the permissions of mi_archivo

sudo groupadd grupo_test #here we create a new group called group_test in the system
groups #then we show the groups that we have in our codespaces, but the group that we created not show
sudo usermod -aG grupo_test $(whoami) #here we add our user to the group
newgrp grupo_test #then we reload the session
groups #and now we can see that groups is showed
chgrp grupo_test comun #it changes the group ownership of comun to group_test

mkdir -p proyecto/sub #it creates the directory project/sub, including parent folders if they don’t exist
touch proyecto/readme proyecto/sub/datos #it creates two empty files: readme and sub/data inside project
sudo chown -R luna:grupo_test proyecto #changes owner to luna and group to grupo_test for everything inside proyecto recursively
ls -IR proyecto #lists all files and subdirectories inside project recursively showing their inode numbers