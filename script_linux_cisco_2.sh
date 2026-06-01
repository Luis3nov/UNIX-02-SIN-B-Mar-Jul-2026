cd ~ # Change to the user's home directory.

dd if=/dev/zero of=/tmp/swapex bs=1M count=50 # Create a 50 MB file filled with zeros.

# dd if=/dev/sda of=/dev/sdb # Clone one entire disk to another disk; dangerous because it overwrites the destination disk.

cd ~/Documents # Change to the Documents directory.

mv people.csv Work # Move people.csv into the Work directory.

ls Work # List the contents of the Work directory.

mv numbers.txt letters.txt alpha.txt School # Move multiple files into the School directory.

ls School # List the contents of the School directory.

mv animals.txt zoo.txt # Rename animals.txt to zoo.txt.

ls # List files and directories in the current directory.

rm linux.txt # Permanently delete linux.txt.

ls linux.txt # Check if linux.txt still exists.

rm Work # Try to remove Work; this fails if Work is a directory.

rm -r Work # Remove the Work directory and all its contents recursively.

ls Work # Check if the Work directory still exists.

cp /etc/passwd . # Copy /etc/passwd to the current directory.

grep sysadmin passwd # Search for lines containing sysadmin in passwd.

grep 'root' passwd # Search for lines containing root in passwd.

grep '^root' /etc/passwd # Search for lines that start with root.

cat alpha-first.txt # Display the contents of alpha-first.txt.

grep 'r$' alpha-first.txt # Search for lines that end with the letter r.

cat red.txt # Display the contents of red.txt.

grep 'r..f' red.txt # Search for r followed by any two characters and then f.

grep 'r..d' red.txt # Search for r followed by any two characters and then d.

grep '....' red.txt # Search for lines containing at least four characters.

grep 'r..t' /etc/passwd # Search for r followed by any two characters and then t.

cat profile.txt # Display the contents of profile.txt.

grep '[0-9]' profile.txt # Search for lines containing at least one digit.

grep '[^0-9]' profile.txt # Search for lines containing at least one non-numeric character.

grep '[.]' profile.txt # Search for lines containing a literal period.

grep 're*d' red.txt # Search for r followed by zero or more e characters and then d.

grep 'r[oe]*d' red.txt # Search for r followed by zero or more o or e characters and then d.

grep 'ee*' red.txt # Search for lines containing at least one e.

# grep 'pattern' # Search standard input for a pattern when no file is specified.

su root # Switch to the root user.

shutdown now # Shut down the system immediately.

date # Display the current system date and time.

shutdown 01:51 # Schedule a shutdown at 01:51 system time.

shutdown +1 "Goodbye World!" # Schedule a shutdown in one minute with a message.

shutdown +5 "System maintenance scheduled. Please save your work." # Schedule a shutdown in five minutes with a warning message.

exit # Exit the root account and return to the previous user.

ifconfig # Display network interface configuration.

iwconfig # Display wireless network interface configuration.

ping -c 4 192.168.1.2 # Send four ping packets to 192.168.1.2.

ping -c 4 192.168.1.3 # Send four ping packets to 192.168.1.3.

ping -c 4 yahoo.com # Test connectivity and DNS resolution using yahoo.com.

ps # Display processes running in the current terminal.

ps -e # Display all processes running on the system.

ps -ef # Display all processes with full details.

sudo apt-get update # Update the local package list.

apt-cache search cow # Search for packages related to the keyword cow.

sudo apt-cache search cow # Search for packages related to cow using administrative privileges.

sudo apt-get install cowsay # Install the cowsay package.

cowsay 'NDG Linux Unhatched' # Display a message using cowsay.

sudo apt-get upgrade # Upgrade installed packages.

sudo apt-get remove cowsay # Remove cowsay but keep configuration files.

sudo apt-get purge cowsay # Remove cowsay and its configuration files completely.

passwd # Change the password of the current user.

passwd -S sysadmin # Display password status information for sysadmin.

su root # Switch to the root user.

passwd sysadmin # Change the password of the sysadmin user as root.

exit # Exit the root account.

cd ~/Documents # Change to the Documents directory.

cat food.txt # Display the contents of food.txt.

cat food.txt > newfile1.txt # Redirect the output of food.txt into newfile1.txt and overwrite the file.

cat newfile1.txt # Display the contents of newfile1.txt.

echo "Hello" # Print Hello to the terminal.

echo "I like food." > newfile1.txt # Overwrite newfile1.txt with new text.

echo "This food is good." >> newfile1.txt # Append text to the end of newfile1.txt.

vi newfile.txt # Open or create newfile.txt using the vi editor.

# h # Move one character left in vi command mode.

# j # Move one line down in vi command mode.

# k # Move one line up in vi command mode.

# l # Move one character right in vi command mode.

# w # Move one word forward in vi command mode.

# b # Move one word backward in vi command mode.

# ^ # Move to the beginning of the current line in vi.

# $ # Move to the end of the current line in vi.

# 5h # Move five characters left in vi.

# 3w # Move three words forward in vi.

# 7j # Move seven lines down in vi.

# 5G # Go to line 5 in vi.

# 1G # Go to the first line in vi.

# gg # Go to the first line in vim.

# G # Go to the last line in vi.

# Ctrl+G # Show the current line number and file information in vi.

# dd # Delete the current line in vi.

# 3dd # Delete three lines in vi.

# dw # Delete the current word in vi.

# d3w # Delete three words in vi.

# d4h # Delete four characters to the left in vi.

# cc # Change the current line in vi.

# cw # Change the current word in vi.

# c3w # Change three words in vi.

# c5h # Change five characters to the left in vi.

# yy # Copy the current line in vi.

# 3yy # Copy three lines in vi.

# yw # Copy one word in vi.

# y$ # Copy from the cursor to the end of the line in vi.

# p # Paste after the cursor in vi.

# P # Paste before the cursor in vi.

# /word # Search forward for word in vi.

# ?word # Search backward for word in vi.

# n # Go to the next search result in vi.

# N # Go to the previous search result in vi.

# a # Start inserting text after the cursor in vi.

# A # Start inserting text at the end of the line in vi.

# i # Start inserting text before the cursor in vi.

# I # Start inserting text at the beginning of the line in vi.

# o # Open a new line below the current line in vi.

# O # Open a new line above the current line in vi.

# Esc # Return to command mode in vi.

# :w # Save the current file in vi.

# :w filename # Save a copy of the file with another name in vi.

# :w! # Force save the current file in vi.

# :1 # Go to line 1 in vi.

# :e filename # Open another file in vi.

# :q # Quit vi if there are no unsaved changes.

# :q! # Quit vi without saving changes.

# :wq # Save and quit vi.

# ZZ # Save and quit vi.