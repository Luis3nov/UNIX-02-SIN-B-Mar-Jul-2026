1  rm -rf !(.gitignore|README.md|LICENSE)
    2  cd evaluacion
    3  bash crear_prueba.sh andromeda
    4  ls andromeda
    5  ls andromeda/
    6  cat datos.log
    7  ls datos.log
    8  sudo ls datos.log
    9  cd andromeda
   10  ls datos.log
   11  cat datos.log
   12  cat init.sh
   13  cat logs
   14  ls andromeda/
   15  cd evaluacion
   16  cd
   17  cd ..
   18  cd ...
   19  cd workspaces/UNIX-02-SIN-B-Mar-Jul-2026/evaluacion
   20  ls andromeda
   21  ls andromeda/
   22  ls -l andromeda/
   23  mv andromeda/logs andromeda/diarios
   24  ls andromeda
   25  cat diarios
   26  ls diarios
   27  cd andromeda
   28  ls diarios
   29  cat README.txt
   30  cd diarios
   31  cat README.txt
   32  cd ..
   33  mkdir archivados
   34  ls andromeda
   35  ls
   36  git add .
   37  git commit -m "Fix problema 1: estructura de directorios corregida"
   38  ls
   39  mv datos.log diarios/
   40  ls
   41  cd diarios
   42  ls
   43  cd ..
   44  ls
   45  mv parametros.bak parametros.conf
   46  ls
   47  git add .
   48  git commit -m "Fix problema 2: archivos movidos y renombrados"
   49  cd diarios
   50  ls
   51  chmod 640 datos.log
   52  ls -l
   53  git add .
   54  git commit -m "Fix problema 3: permisos numericos 644 en datos.log"
   55  git add -A
   56  git commit -m "Fix problema 3: permisos numericos 644 en datos.log"
   57  cd ..
   58  ls
   59  ls -l
   60  cd ..
   61  ls -lt
   62  ls
   63  cd andromeda
   64  ls
   65  chmod u+x init.sh
   66  chmod o-w parametros.conf
   67  ls -l
   68  git add -A
   69  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   70  chmod u+s init.sh
   71  ls -l init.sh
   72  git add -A
   73  git commit -m "Fix problema 5: SUID activado en init.sh"
   74  chmod +t /tmp/andromeda_zone
   75  ls -ld /tmp/andromeda_zone
   76  git add -A
   77  git commit -m "Fix problema 6: sticky bit en /tmp/andromeda_zone

   78  git commit -m "Fix problema 6: sticky bit en /tmp/andromeda_zone"
   79  git add -A
   80  git commit -m "Fix problema 6: sticky bit en /tmp/andromeda_zone"
   81  ls -ld /tmp/andromeda_zone
   82  gpg --full-generate-key
   83  gpg --list-keys
   84  gpg --encrypt --recipient sirius@andromeda.lab andromeda/diarios/datos.log
   85  ls andromeda/diarios/
   86  cd diarios
   87  ls
   88  gpg --encrypt --recipient sirius@andromeda.lab andromeda/diarios/datos.log
   89  gpg --encrypt --recipient sirius@andromeda.lab diarios/datos.log
   90  history