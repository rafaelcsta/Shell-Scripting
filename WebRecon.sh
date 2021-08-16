#!/bin/bash
echo '
		__        __     _      ____
		\ \      / /___ | |__  |  _ \  ___  ___  ___   _ __
		 \ \ /\ / // _ \|  _ \ | |_) |/ _ \/ __|/ _ \ |  _ \
		  \ V  V /|  __/| |_) ||  _ <|  __/ (__| (_) || | | |
		   \_/\_/  \___||_.__/ |_| \_\\___|\___|\___/ |_| |_|
            		    Version 1.1    Author @BlackCyber
			    https://github.com/BlackCyber21/
'
# eh possivel modificar a lista para encontrar aquivos
# nesse caso remover a barra no final da linha resp -> /)
if [ "$1" == "" ]
then
echo
echo "                Modo de uso: $0 https://exemplo.com .html wordlist.txt"
echo "    Observe o prefixo https ou http e use .ext ou / como segundo argumento"
echo
elif [ "$2" == "" ]
then
echo
echo "                Modo de uso: $0 https://exemplo.com / wordlist.txt"
echo "  Observe o prefixo https ou http, '/' como argumento 2 indica busca por diretorio"
echo
elif [ "$3" == "" ]
then
echo
echo "                Modo de uso: $0 https://exemplo.com / wordlist.txt"
echo "  Observe o prefixo https ou http, '/' como argumento 2 indica busca por diretorio"
echo
else
for palavra in $(cat $3);
do
resp=$(curl -s -H "User-Agent: Google Chrome" -o /dev/null -w "%{http_code}" $1/$palavra$2) #.$2
if [ $resp == "200" ]
then
echo "Encontrado: $1/$palavra$2"
#echo "Nada encontrado"
fi
done
fi
