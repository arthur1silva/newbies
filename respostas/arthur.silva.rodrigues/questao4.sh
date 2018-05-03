#!/bin/bash

read -s -p "Entre com a senha: " senha
echo

if [ "${#senha}" -lt 8 ]; then
	echo 'Senha insegura! Tamanho da senha dever ser no minimo 8 caracteres'

elif [[ !($senha =~ [a-z]) || !($senha =~ [0-9]) ]]; then
	echo 'Senha insegura! Senha deve contar letras e numeros'

elif [[ !($senha =~ [A-Z]) ]]; then
	echo 'Senha insegura! Senha deve conter letra maiuscula'

else 
	echo 'Senha segura'
fi
