#!/bin/bash
echo '
		  ____               _   _              _
		 / ___|  ___  _ __  | | | |  __ _  ___ | |__
		| |  _  / _ \|  _ \ | |_| | / _  |/ __||  _ \
		| |_| ||  __/| | | ||  _  || (_| |\__ \| | | |
		 \____| \___||_| |_||_| |_| \__,_||___/|_| |_|
            		Version 1.1    Author @BlackCyber
			https://github.com/BlackCyber21/
'
echo ""
if [ "$1" == "" ]
then
echo "              Modo de uso: $0 senha123 sha256sum hash.txt"
echo ""
elif [ "$2" == "" ]
then
echo "              Modo de uso: $0 senha123 sha1sum hash.txt"
echo ""
elif [ "$3" == "" ]
then
echo "              Modo de uso: $0 12345678 md5sum saida.txt"
else
echo ""
echo "               Gerando hashfile $3 para a senha $1:"
echo ""
echo -n "$1" | $2 | sed 's/...$//'g > $3
sleep 2
echo "                               Aqui seu hash: "
echo
for hash in $(cat $3);do
echo "$hash"
echo
done
fi
