cd #cd means change directory and it takes me to the root directory (home)
cd /home/codespace #it takes me to an absolute directory with the principal folder in codespaces
cd ~ #~ is a shortcut for home, so it takes me to the home directory
cd $HOME #tt takes you to the directory that is stored in the HOME environment variable, like the two others

mkdir proyecto #here we create a directory
cd proyecto/ #and here we change to the directory that we create
ls -lai
total 12 #this indicates the total size used by the listed files in blocks
925620 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:39 . #it means that this directory has 2 hard links
918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:39 .. #and this has only one hard link

stat . #it gives me some detailed information about my direcotry, for example it gives me device: 0,45. it means that there is a virtual disk

mkdir -p /tmp/prueba/sub1 /tmp/prueba/sub2 #here we create two new directories, tmp is for temporal files and -p means that it also create the parent directory
stat /tmp/prueba #it show me detailed information from the directory prueba
man mkdir #it shows me the manual 

pwd #print working directory
whoami  #it shows me my username

ls #it shows file and folder names without details
ls -l #it show all (detailed information)
ls -la #it shows me all and the hidden files
ls -lh #it shows in format human-readable
ls -lt #it order most recently modified files
ls / #it shows me de FHS, filesystem hierarchy standard
ls /etc | head -20 #etc is for configuration files, and head -20 is for only show the first 20 text lines of the command, and tail is for the last 20 text lines
ls /dev | head -20 #and dev is for the device folder