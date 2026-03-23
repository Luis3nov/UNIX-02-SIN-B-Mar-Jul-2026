#listamos mis llaves
gpg --list-secret-keys --keyid-format=long
#exportamos mi llave privada y con armor la transforamrmos de binario a texto
gpg --armor --export-secret-keys B84A19B106C03AD7
#exporto mi llave publica
gpg --armor --export luis3novillo@gmail.com > mi_llave_publica.asc
#listo mis llaves nuevamente
gpg --list-keys
