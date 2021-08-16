#!/bin/bash
echo '
		 ____             ____   _
		|  _ \ __ _  _ __/ ___| (_) _ __    __ _
		| |_) / _  ||  __\___ \ | ||  _ \  / _  |
		|  __/ (_| || |   ___) || || | | || (_| |
		|_|   \__,_||_|  |____/ |_||_| |_| \__, |
		                                   |___/
            	    Version 1.1    Author @BlackCyber
		    https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
	echo
	echo "            Modo de uso: $0 https:link nomededominionovamente/"
	echo "           Exemplo: $0 'https://exemple.com' exemple.com/"
	echo
#Isso porque foi a solucao encontrada pra o grep na index funcionar dentro do diretorio que eh criado com o nome do dominio
else
	echo "               Fazendo parsing em $1"
	echo
#Seusar o robots simples precisa passar como segundo argumento ./
#Full robots
#wget -robots"="off $1 | tail -n 5; echo
wget -robots"="off $1 ; echo
#grep href $2/index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f1 | grep -v 'favicon
chmod 777 -R $2
grep href $2index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f1 | egrep -v "favicon|host" | grep -v "<l" | egrep ".br|.|.com|.net|.io" | sort -u > $2urliplist.txt | sleep 2
grep src $2index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f1 | egrep -v "favicon|if" | grep -v "<l" | egrep ".br|.|.com|.net|.io" | sort -u >> $2urliplist.txt | sleep 2
echo "                     Informacoes obtidas:"
echo ""
for url in $(cat $2urliplist.txt | sort -u);do host $url | egrep "alias for|address" | grep -v "n)" | grep -v "'" | grep -v ";" | grep -v "(" | grep -v "{" | grep -v "=" | grep -v "null" | grep -v "legal" | grep -v "Version" | sort -u;done
fi
