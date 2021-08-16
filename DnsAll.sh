#!/bin/bash
echo '
		 ____                  _    _  _
		|  _ \  _ __   ___    / \  | || |
		| | | ||  _ \ / __|  //_\\ | || |
		| |_| || | | |\__ \ / ___ \| || |
		|____/ |_| |_||___//_/   \_\_||_|
	        Version 1.1    Author @BlackCyber
		https://github.com/BlackCyber21/
'
# virusotal.com
# dnsdumpster.com
# securitytrails.com

if [ "$1" == "" ]
then
        echo "          Modo de uso: $0 exemplo.com listadesub.txt listaderegistros.txt"
elif [ "$2" == "" ]
then
	echo "          Modo de uso $0 exemplo.com listadepalavras.txt listaderegistros.txt"
else
#mande para variavel palavra o que estiver em lista.txt
for palavra in $(cat $2);do
for registro in $(cat $3);do
#tentando achar registros de/e subdominios
#faca um host buscando registro tal enquanto a lista preenche o sufixo para o dominioprincipal
host -t $registro $palavra.$1 | egrep "address|alias" | sort -un
done
done
fi
