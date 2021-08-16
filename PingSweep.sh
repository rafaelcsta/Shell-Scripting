#!/bin/bash
echo '
		 ____   _                ____
		|  _ \ (_) _ __    __ _ / ___|__      __ ___  ___  _ __
		| |_) || ||  _ \  / _  |\___ \\ \ /\ / // _ \/ _ \|  _ \
		|  __/ | || | | || (_| | ___) |\ V  V /|  __/  __/| |_) |
		|_|    |_||_| |_| \__, ||____/  \_/\_/  \___|\___|| .__/
		                  |___/                           |_|
            		  Version 1.1    Author @BlackCyber
			  https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo
	echo "                       Modo de uso: $0 REDE"
	echo "                       Exemplo: $0 192.168.0"
	echo
else
for host in {1..254};
do
ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4;
done
fi
