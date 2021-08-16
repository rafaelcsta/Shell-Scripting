#!/bin/bash
echo '
		 ____               ____
		|  _ \  _ __   ___ |  _ \  ___  ___  ___   _ __
		| | | ||  _ \ / __|| |_) |/ _ \/ __|/ _ \ |  _ \
		| |_| || | | |\__ \|  _ <|  __/ (__| (_) || | | |
		|____/ |_| |_||___/|_| \_\\___|\___|\___/ |_| |_|
	               Version 1.1    Author @BlackCyber
		       https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo "              Modo de uso: $0 exemplo.com listdepalavras.txt listaderegs.txt"
elif [ "$2" == "" ]
then
        echo "              Modo de uso: $0 exemplo.com listdepalavras.txt listaderegs.txt"
elif [ "$3" == "" ]
then
        echo "              Modo de uso: $0 exemplo.com listdepalavras.txt listaderegs.txt"
else
for palavra in $(cat $2);do
for regs in $(cat $3);do
host -t $regs $palavra.$1 | grep -v "NXDOMAIN"
done
done
fi
