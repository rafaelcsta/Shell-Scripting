#!/bin/bash
echo '
		 ____              _____                         __
		|  _ \  _ __   ___|_   _|_ __ __ _  _ __   ___  / _|
		| | | ||  _ \ / __| | | |  __/ _  ||  _ \ / __|| |_
		| |_| || | | |\__ \ | | | | | (_| || | | |\__ \|  _|
		|____/ |_| |_||___/ |_| |_|  \__,_||_| |_||___/|_|
			 Version 1.1    Author @BlackCyber
			 https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 exemplo.com"
else
	echo ""
	echo "Resolvendo $1 "
for server in $(host -t ns $1 | cut -d " " -f4);
do
host -l -a $1 $sxerver;
done
fi
