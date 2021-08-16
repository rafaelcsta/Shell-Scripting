#!/bin/bash
echo '
		 ____          _          _  _____  _
		/ ___|  _   _ | |__    __| ||_   _|| | __
		\___ \ | | | ||  _ \  / _  |  | |  | |/ /
		 ___) || |_| || |_) || (_| |  | |  |   <
		|____/  \__,_||_.__/  \__,_|  |_|  |_|\_\
            	    Version 1.1    Author @BlackCyber
		    https://github.com/BlackCyber21/
'
#Voce pode add tbm
#for reg in $(cat reg.txt);do
#host -t $reg $palavra.1 > output.txt;
#done
#./SubdTk.sh site.com.br
#Neste caso reg.txt deve conter cname,mx,txt,spf...
if [ "$1" == "" ]
then
echo
echo "             Requer uma lista.txt com prefixos de subdominios"
echo "                  Modo de uso: $0 exemple.com lista.txt"
echo
elif [ "$2" == "" ]
then
echo
echo "             Requer uma lista.txt com prefixos de subdominios"
echo "                  Modo de uso: $0 google.com lista.txt"
echo
else
for palavra in $(cat $2);do
host -t cname $palavra.$1 | grep "alias for"
done
fi
