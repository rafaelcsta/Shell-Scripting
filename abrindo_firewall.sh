#!/bin/bash
echo "Abrindo portas..."
echo
nc -vnlp 53&
sleep 2
nc -vnlp 80&
sleep 2
nc -vnlp 443&
sleep 2
nc -vnlp 10000&
sleep 2
nc -vnlp 22&
sleep 2
nc -vnlp 2222&
sleep 2
nc -vnlp 21&
echo
echo "Portas abertas"
echo
netstat -nlpt
