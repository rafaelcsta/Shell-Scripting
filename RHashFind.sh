#!/bin/bash
echo '
		 ____   _   _              _      _____ _             _
		|  _ \ | | | |  __ _  ___ | |__  |  ___(_) _ __    __| |
		| |_) || |_| | / _  |/ __||  _ \ | |_  | ||  _ \  / _  |
		|  _ < |  _  || (_| |\__ \| | | ||  _| | || | | || (_| |
		|_| \_\|_| |_| \__,_||___/|_| |_||_|   |_||_| |_| \__,_|
            		  Version 1.1    Author @BlackCyber
			  https://github.com/BlackCyber21/
'
echo
if [ "$1" == "" ]
then
echo
echo "                      Modo de uso: $0 /RainbowsHashsFOLDER/ hash"
echo "           Voce pode usar como primeiro argumento "./" caso haja rainbows no pwd"
echo
elif [ "$2" == "" ]
then
echo
echo "  Modo de uso: $0 /home/test/Desktop/CRACKPASS/HASHS/ 5a9501103672fcb53c4d1fb8f5e1ba77"
echo
else
echo
echo "                                      Arquivos varridos: "
echo
grep -r "$2" "$1" | grep -v "Modo" 2> /dev/null
resp=$(echo "$?")
if [ $resp == "0" ]
then
echo
echo "                                              ^^^^^^^^ Senha encontrada $resp" | sed 's/.$//'
echo
else
echo
echo "                     Hash Not Found :("
echo
fi
fi
