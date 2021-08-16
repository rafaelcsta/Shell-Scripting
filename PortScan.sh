#!/bin/bash
echo '
		 ____              _    ____
		|  _ \ ___   _ __ | |_ / ___|   ___  __ _  _ __
		| |_) / _ \ |  __|| __|\___ \  / __|/ _  ||  _ \
		|  __/ (_) || |   | |_  ___) || (__| (_| || | | |
		|_|   \___/ |_|    \__||____/  \___|\__,_||_| |_|
		        Version 1.1    Author @BlackCyber
			https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
echo "                       	Precisa ser root (#)"
echo "                       Modo de uso: $0 REDE PORTA"
echo "                       Exemplo: $0 192.168.0 80"
echo
else
for ip in {200..254};
do
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi
