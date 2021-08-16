#!/bin/bash
echo '
		 ____               ____
		|  _ \  _ __   ___ |  _ \  ___ __   _
		| | | ||  _ \ / __|| |_) |/ _ \\ \ / /
		| |_| || | | |\__ \|  _ <|  __/ \ V /
		|____/ |_| |_||___/|_| \_\\___|  \_/
		  Version 1.1    Author @BlackCyber
		  https://github.com/BlackCyber21/
'
#Descobrindo dns por netblock (bloco de ip) range
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 192.168.0 1 254"
else
for range in $(seq $2 $3);do
host -t ptr $1.$range | cut -d " " -f5 | grep -v "ip-" | grep -v "NXDOMAIN"
done
fi
