#listo mi llave privada
gpg --list-secret-keys --keyid-format=long
#exportamos mi llave privada y con armor la transforamrmos de binario a texto
gpg --armor --export-secret-keys B84A19B106C03AD7
#exporto mi llave publica
gpg --armor --export luis3novillo@gmail.com > mi_llave_publica.asc
#listo mis llaves nuevamente
gpg --list-keys
#importamos la llave publica de micompa
gpg --import MICOMPA_llave_publica.asc
#listamos mis llaves para confirmar la importacion de la llave de micompa
gpg --list-keys
#con el siguiente comando escribimos el mesnaje que le vamos a escribir a micompa
echo "this message is secret, arsenal trash" > doc_no_cifrado.txt
#usamos el hash de la llave de mi compa para cifrar el mensaje
gpg --output doc_cifrado.txt --encrypt --recipient 31FFC79B29A787E86EE1ADAF2BD74A3FCDD98B69 doc_no_cifrado.txt
#y con el siguiente comando desenciptamos el mensaje de micompa
gpg --decrypt micompita_doc_cifrado.txt