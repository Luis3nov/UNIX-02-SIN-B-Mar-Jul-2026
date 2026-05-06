id # show current user and groups
cat /etc/passwd | head -10 #display first 10 lines of /etc/passwd
cat /etc/group | head -10 #display first 10 lines of /etc/group
groups #it shows the groups of the atual user
groups $USER #it do the same of the previous

id -u #show current user id
id -g #show current user primary GID
id -G #show all group IDs for current user

cat /etc/group | grep games #displays the group entry for “games” from the system groups file
cat /etc/gshadow #displays the secure group file, including group passwords and admin members

mkdir ~/proyecto_unix #it creates a new directory: proyecto_unix
ls -la ~/proyecto_unix/ #it list all files with detailed information included hidden files

#groupadd [opciones] nombre_grupo
sudo groupadd desarrolladores #here we create a simple group
groupadd -g 2000 operaciones #it creates a group named operaciones with the custom GID 2000
groupadd --system servicios_web #creates a system group named servicios_web