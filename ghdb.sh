#!/bin/bash
echo '
		        _          _  _
		  __ _ | |__    __| || |__
		 / _  ||  _ \  / _  ||  _ \
		| (_| || | | || (_| || |_) |
		 \__, ||_| |_| \__,_||_.__/
		 |___/
            	Version 1.1    Author @BlackCyber
		https://github.com/BlackCyber21/
'
if [ "$1" == "--help" ]
then
echo
echo "          	Execute como usuario comum ($)"
echo "		Modo de uso: $0 sitealvo"
echo "		Edite as dorks dentro do script"
echo
elif [ "$1" == "" ]
then
echo
echo "          	Execute como usuario comum ($)"
echo "		Modo de uso: $0 sitealvo"
echo "		Edite as dorks dentro do script"
echo
else
SEARCH="firefox"
ALVO="$1"
echo "Pesquisa no Pastebin"
$SEARCH "https://google.com/search?q=site:pastebin.com+$ALVO" 2> /dev/null
echo "Pesquisa no Trello"
$SEARCH "https://google.com/search?q=site:trello.com+$ALVO" 2> /dev/null
echo "Pesquisa por Arquivos"
$SEARCH "https://google.com/search?q=site:$ALVO+ext:php+OR+ext:asp+OR+ext:txt" 2> /dev/null
fi
