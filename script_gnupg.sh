#first I list my private key
gpg --list-secret-keys --keyid-format=long
#we have to export my private key with my hash and with armor we transform it from binary to text
gpg --armor --export-secret-keys B84A19B106C03AD7
#then we have to export our publi key
gpg --armor --export luis3novillo@gmail.com > mi_llave_publica.asc
#then list de keys again
gpg --list-keys
#then we have to import de public key form our COMPA
gpg --import MICOMPA_llave_publica.asc
#next we need to list the keys to confirm the import of the key from my computer.
gpg --list-keys
#with this command we have to write the private message for our COMPITA
echo "this message is secret, arsenal trash" > doc_no_cifrado.txt
#we used our friend key hash to encrypt the message
gpg --output doc_cifrado.txt --encrypt --recipient 31FFC79B29A787E86EE1ADAF2BD74A3FCDD98B69 doc_no_cifrado.txt
#and with the following command we decrypt the message from mycompa
gpg --decrypt micompita_doc_cifrado.txt
#with the following command we create a document with my signed unencrypted message
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
#and with cat we print to the terminal to verify if the document was created
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
#then we are going to valid the doc and the sign of our compita
gpg --verify ALEX_firma_separada_doc_no_cifrado.sig ALEX_doc_no_cifrado.txt
#finally we have to create a doc signed and binary
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient C3BD77E8631B863F50539A5913F0A2DFFDB3B485 doc_no_cifrado.txt
#then we have to change the document name in order to later validate the signature and decrypt it
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt ALEX_doc_cifrado_y_firmado.txt
#anddd finaly we have to check the message with cat, we could see the private message from our compita
cat doc_cifrado_y_firmado_descifrado_y_validado.txt