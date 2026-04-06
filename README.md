three components:
**linux kernel**
**BusyBox** - it provides the basic utilities from UNIX in one binary
**systlinux** - the bootloader that charges all when starting

sudo apt update
sudo apt upgrade
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

what is for each pack:
gcc,make - compilation for kernel and BusyBox
libncurses-dev - interactives menus
