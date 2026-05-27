id 
id -gn # to see main group
touch ~/test_grupo_heredado.txt #here we create a fil
ls -la ~/test_grupo_heredado.txt #here we see the group come into the file, that is the main group

id -gn
echo "Grupo actual: $(id -gn)"
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

addgroup desarrolladores #to create group desarrolladores
newgrp desarrolladores #to change the main group

id -gn #to check de main group, now should be desarrolladores
echo "Nuevo grupo activo: $(id -gn)" #to show the new main group
touch ~/dentro_de_newgrp.txt #here we create a file inside the new group, that is the main group now
ls -la ~/dentro_de_newgrp.txt #here we see the group come into the file, that is the main group now

mkdir -p ~/proyecto_dev/src #we create a directory with the new group, that is the main group now, to see the permissions

ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt #here we see the permissions of the files, the first one has the old group and the second one has the new group, that is the main group now
