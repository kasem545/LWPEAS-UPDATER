#! /bin/bash

FILE="linpeas.sh"
FILE2="winPEAS.bat"
if [[ -f $FILE ]] && [[ -f $FILE2 ]]

then 

  echo "[+]The files exists." 
  echo "[+]Removing and updating"
  rm linpeas.sh
  rm winPEAS.bat
  sleep 2
  wget -q  https://github.com/carlospolop/PEASS-ng/releases/download/20230212/linpeas.sh
  wget -q  https://github.com/carlospolop/PEASS-ng/releases/download/20230212/winPEAS.bat

else 

  echo "[!]The files $FILE and $FILE2 not found." 
  echo "[+]Downloading"
  wget -q https://github.com/carlospolop/PEASS-ng/releases/download/20230212/linpeas.sh
  wget -q https://github.com/carlospolop/PEASS-ng/releases/download/20230212/winPEAS.bat
fi