#!/bin/bash
echo '
		  ____               _   _              _      ____
		 / ___|  ___  _ __  | | | |  __ _  ___ | |__  |___ \
		| |  _  / _ \|  _ \ | |_| | / _  |/ __||  _ \   __) |
		| |_| ||  __/| | | ||  _  || (_| |\__ \| | | | / __/
		 \____| \___||_| |_||_| |_| \__,_||___/|_| |_||____|
            		   Version 2.0    Author @BlackCyber
			   https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
echo
echo "             Gere hashs ao lado de suas respectivas palavras!"
echo "   Modo de uso: $0 /home/test/Desktop/all/CRACKPASS/HASHS/wordlist.txt md5sum"
echo
elif [ "$2" == "" ]
then
echo "                Modo de uso: $0 wordlist.txt sha256sum"
else
echo
echo "         Gerando hashs apartir de senhas em $1"
echo
echo "                          Arquivo $2.txt sendo criado"
echo
for i in $(cat "$1");do echo -n $i" ";echo -n "$i" | $2 | sed 's/...$//';done > $2.txt | sleep 2 | tail -f $2.txt
fi
