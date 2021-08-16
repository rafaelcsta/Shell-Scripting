#!/bin/bash
echo '
		 ____             __     __
		|  _ \  _ __   ___\ \   / /_ __ ___  ___  ___
		| | | ||  _ \ / __|\ \ / /|  __/ _ \/ __|/ __|
		| |_| || | | |\__ \ \ V / | | (  =_/ (__ \__ \
		|____/ |_| |_||___/  \_/  |_|  \___|\___||___/
     		       Version 1.1    Author @BlackCyber
		       https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo "              Modo de uso: $0 exemplo.com all"
elif [ "$2" == "" ]
then
	echo "              Modo de uso: $0 exemplo.com all"
elif [ "$2" == "txt" ]
then
host -t $2 $1
elif [ "$2" == "mx" ]
then
host -t $2 $1
elif [ "$2" == "ptr" ]
then
host -t $2 $1
elif [ "$2" == "spf" ]
then
host -t $2 $1
elif [ "$2" == "cname" ]
then
host -t $2 $1
else
for regstypes in $(cat $2);do
host -t $regstypes $1
done
fi
