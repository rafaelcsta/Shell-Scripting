#!/bin/bash
echo '
		 _____            _    ____                         _
		|  ___|__ _  ___ | |_ / ___|   ___  __ _  _ __ ___ | |__
		| |_  / _  |/ __|| __|\___ \  / _ \/ _  ||  __/ __||  _ \
		|  _|| (_| |\__ \| |_  ___) ||  __/ (_| || | | (__ | | | |
		|_|   \__,_||___/ \__||____/  \___|\__,_||_|  \___||_| |_|
			     Version 1.1    Author @BlackCyber
			     https://github.com/BlackCyber21/
'
# Esse script eh perfeito para dorks
# voce pode montar sua dork como bem entender
# mas eh preciso paciencia para filtrar corretamente as saidas
# testar comandos por comandos, filtros por filtros
# Nao mexa na estrutura de seu script por conta de uma falha
# Usar vpn pra mudar o ip quando tiver problemas com pesquisa, pois o google
# Bloqueia voce no captcha apos algumas buscas
if [ "$1" == "" ]
then
echo
echo "                     Modo de uso: $0 testphp.vulnweb.com php"
echo
elif [ "$2" == "" ]
then
echo
echo "                     Modo de uso: $0 testphp.vulnweb.com php"
echo
else
echo
echo "                          Google Hacking"
echo
lynx -dump "http://google.com/search?num=500&q=site:"$1"+ext:"$2"" | cut -d "=" -f2 | grep ".$2" | egrep -v "site|google" | sed s'/...$//'g
echo
fi
