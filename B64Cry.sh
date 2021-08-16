#!/bin/bash
echo '
		 ____    __    _  _     ____
		| __ )  / /_  | || |   / ___| _ __  _   _
		|  _ \ |  _ \ | || |_ | |    |  __|| | | |
		| |_) || (_) ||__   _|| |___ | |   | |_| |
		|____/  \___/    |_|   \____||_|    \__, |
		                                    |___/
           	    Version 1.1    Author @BlackCyber
		    https://github.com/BlackCyber21/
'
echo ""
if [ "$1" == "" ]
then
echo "                Modo de uso: $0 wordlist.txt b64output"
echo ""
elif [ "$2" == "" ]
then
echo
echo "                Modo de uso: $0 wordlist.txt b64output"
echo
else
echo
echo "       Cryptografando com base64 senhas do arquivo $1"
echo "                 A saida fica salva em $2.txt"
echo
for i in $(cat $1);do echo -n $i | base64;done > $2.txt | sleep 2 | tail -f $2.txt;
echo
echo "                   Pronto, $2.txt criado!"
echo
fi
