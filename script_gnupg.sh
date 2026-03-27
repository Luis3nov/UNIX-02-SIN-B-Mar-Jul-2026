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
#con el siguiente comando creamos un documento con mi mensaje no cifrado firmado
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
#y con cat imprimimos en la terminal para verificar si se creo el documento
cat doc_no_cifrado_firmado.txt
#then we have to verify the signed document from our compita
gpg --verify ALEX_doc_no_cifrado_firmado.txt
#then we have to edit, and do a vote of confidence
gpg --edit-key 31FFC79B29A787E86EE1ADAF2BD74A3FCDD98B69
#we have to put trust
trust
#and the level of confidence
4
#then we have to sign de key for our decision, and confirm and put our password
gpg --sign-key 31FFC79B29A787E86EE1ADAF2BD74A3FCDD98B69
#then we have to verify our sign
gpg --verify ALEX_doc_no_cifrado_firmado.txt
#then we are going to sign the document in binary format
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt
#then we have to verify if the doc with the sign binary is correct
gpg --verify ALEX_doc_no_cifrado_firmado_binario.txt
#now we're going to sign the document and separate the signature from the document.
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign
doc_no_cifrado.txt