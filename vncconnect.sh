#!/bin/bash
# -*- coding: utf-8 -*-

echo ""
if [ "$1" == "" ]
then
echo "              Modo de uso: $0 192.168.15."
echo ""
else
for ip in $1{1..3};do vncviewer $ip
done
fi
