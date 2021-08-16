#!/bin/bash
echo '
		 ____                           _____
		/ ___|   ___  _ __ ___    __ _ |  ___|___   _ __ ___
		\___ \  / _ \|  _   _ \  / _  || |_  / _ \ |  __/ _ \
		 ___) ||  __/| | | | | || (_| ||  _|| (_) || | | (_) |
		|____/  \___||_| |_| |_| \__,_||_|   \___/ |_|  \___/
		            Version 1.1    Author @BlackCyber
		            https://github.com/BlackCyber21/
'
if [ "$1" == "--help" ]
then
echo "			    Modo de uso: $0"
echo "			    Cores disponiveis: verde ou vermelho"
echo
else
echo "Qual a cor do semaforo?"
read cor
if [ "$cor" == "verde" ]
then
	echo "Siga em frente =)"
elif [ "$cor" == "amarelo" ]
then
	echo "Aguarde!"

else
	echo "PARE!"
fi
fi
