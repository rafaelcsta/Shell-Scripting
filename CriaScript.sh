#!/bin/bash
echo '
		  ____        _         ____               _         _
		 / ___| _ __ (_)  __ _ / ___|   ___  _ __ (_) _ __  | |_
		| |    |  __|| | / _  |\___ \  / __||  __|| ||  _ \ | __|
		| |___ | |   | || (_| | ___) || (__ | |   | || |_) || |_
		 \____||_|   |_| \__,_||____/  \___||_|   |_|| .__/  \__(
		                                             |_|
            		Version 1.1    Author @BlackCyber
			https://github.com/BlackCyber21/
'
if [ "$1" == "" ]
then
echo "----------------------------------------------------------------------"
echo "		       Modo de uso: $0 nomedoscript.sh"
echo "----------------------------------------------------------------------"
else
sleep 2
echo '#!/bin/bash' > OUT/$1
echo "echo '" >> OUT/$1
figlet -m 100 $1 | sed 's/^/\'\t'\'\t'/; s/.............$//' >> OUT/$1
echo "            Version 1.1    Author @BlackCyber" >> OUT/$1
echo "            https://github.com/BlackCyber21/" >> OUT/$1
echo "'" >> OUT/$1
chmod 777 OUT/$1
echo "----------------------------------------------------------------------"
echo "      Remova aspas, alinhe e edite o banner de seu novo script: "
echo "----------------------------------------------------------------------"
sleep 10
nano OUT/$1
echo "----------------------------------------------------------------------"
echo "		    Fazendo updatedb para o locate"
echo "----------------------------------------------------------------------"
updatedb
echo "----------------------------------------------------------------------"
echo "		  Se preferir pode colar um código manualmente: "
echo "----------------------------------------------------------------------"
sleep 5
nano OUT/$1
echo "-----------------------------------------------------------------------------------"
echo "   Atenção o código deve estar localizado em qualquer pasta no computador"
echo "-----------------------------------------------------------------------------------"
echo "		         Digite o nome do código: "
echo "----------------------------------------------------------------------"
read codename
echo "----------------------------------------------------------------------"
echo "			Buscando caminho para $codename"
echo "----------------------------------------------------------------------"
echo
locate $codename
echo
for way in $(locate $codename);do cat $way;done
echo
echo "			Copie o caminho do arquivo."
echo "------------------------------------------------------------------------------"
echo "	Agora cole abaixo o caminho do código para a contagem de linhas: "
echo "------------------------------------------------------------------------------"
read codeway
echo "			Exibindo número de linhas: "
wc -l $codeway #| seds/.$//'
echo "		Digite o número de linhas que está aqui acima: "
read lines
echo ""
echo "----------------------------------------------------------------------"
echo "			Veja o topo do código..."
echo "----------------------------------------------------------------------"
cat $codeway | head -n20
echo "-------------------------------------"
sleep 10
echo ""
echo "-----------------------------------------------------------------------------"
echo "		 Atenção, faça a subtração das linhas"
echo "Subtraia $lines - Quantidade que deseja remover, digite apenas o Resultado: "
echo "-----------------------------------------------------------------------------"
read paratail
echo "----------------------------------------------------------------------"
echo "		      Injetando código no arquivo $1"
echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
cat $codeway | tail -n $paratail >> OUT/$1
echo ""
sleep 2
echo ""
cat OUT/$1
echo ""
echo "----------------------------------------------------------------------"
echo "		       Veja acima se o script está pronto: "
echo "----------------------------------------------------------------------"

sleep 12
echo "----------------------------------------------------------------------"
echo "Se estiver tudo certinho saia, se ainda precisar editar, o nano vem aí..."
echo "---------------------------------------------------------------------"
sleep 10
nano OUT/$1
echo ""
cat OUT/$1
echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
echo "		 Mostrando ultima atualização feita com nano"
echo "----------------------------------------------------------------------"
fi
