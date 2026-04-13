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