
sudo apt update #this command refresh the list of available software
sudo apt upgrade #this install available updates
sudo apt install parted #and this install the program that we need
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #firt this command list all the disks en partitions and show disks in simple tree format, "&&" means AND, only print the next command if the preveously was correct
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #this means an if, if that direcotry contanins UEFI print Uefi, else print BIOS. it also represents OR.
echo "eto es un archivo" > archivo.txt #here I create a short file
stat archivo.txt #then I print the stats from my file, in this case the size is very short in comparision with the size of my block, that means that it is a internal fragmentation