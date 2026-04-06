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