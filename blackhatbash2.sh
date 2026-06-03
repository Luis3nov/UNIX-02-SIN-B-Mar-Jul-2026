#!/bin/bash

set -x
mkdir mydirectory 
touch mydirectory/myfile 
ls -l mydirectory
set +x

#first result
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ bash -n blackhatbash2.sh 
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ 

#second result
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ bash -x blackhatbash2.sh 
#+ mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:23 myfile
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ 

#third result
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ bash blackhatbash2.sh 
#+ mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:24 myfile
#+ set +x
#[Luis_Novillo] UNIX-02-SIN-B-Mar-Jul-2026 ✓ $ 