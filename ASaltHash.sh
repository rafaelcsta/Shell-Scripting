#!/bin/bash
echo '
		    _    ____          _  _    _   _              _
		   / \  / ___|   __ _ | || |_ | | | |  __ _  ___ | |__
		  //_\\ \___ \  / _  || || __|| |_| | / _  |/ __||  _ \
		 / ___ \ ___) || (_| || || |_ |  _  || (_| |\__ \| | | |
		/_/   \_\____/  \__,_||_| \__||_| |_| \__,_||___/|_| |_|
            		     Version 1.1    Author @BlackCyber
			     https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
echo
echo "                      Modo de uso: $0 id salt senha"
echo
elif [ "$2" == "" ]
then
echo
echo "                  Modo de uso: $0 6 r06hSt2YoUlJ5Lui 12345678"
echo
elif [ "$3" == "" ]
then
echo
echo "                        Modo de uso: $0 1 +2i9 and"
echo
else
echo
openssl passwd -$1 -salt $2 $3
echo
fi
