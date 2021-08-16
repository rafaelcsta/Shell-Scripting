#!/bin/bash
echo '
		 ____    __    _  _    ____
		| __ )  / /_  | || |  |  _ \   ___  ___  _ __  _   _
		|  _ \ |  _ \ | || |_ | | | | / _ \/ __||  __|| | | |
		| |_) || (_) ||__   _|| |_| ||  __/ (__ | |   | |_| |
		|____/  \___/    |_|  |____/  \___|\___||_|    \__, |
		                                               |___/
            		Version 1.1    Author @BlackCyber
			https://github.com/BlackCyber21/
'
echo ""
if [ "$1" == "" ]
then
echo "                Modo de uso: $0 b64output.txt rawdecb64"
echo ""
elif [ "$2" == "" ]
then
echo
echo "                Modo de uso: $0 b64outputb64.txt saida"
echo
else
echo
echo "             Decryptando senhas base64 do arquivo $1"
echo "                 A saida fica salva em $2.txt"
for i in $(cat $1);do echo "";echo -n $i | base64 -d ;done > $2.txt | sleep 2 | tail -f $2.txt
echo
echo "                 Pronto, arquivo $2.txt criado!"
echo
fi
