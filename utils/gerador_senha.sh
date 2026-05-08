#!/usr/bin/env bash

# --- VARIABLES ---
ARQUIVO_SENHAS="logs/senhas_geradas.txt"

# --- FUNCTIONS ---
salvar_senha() {
    echo "$1" >> "$ARQUIVO_SENHAS"
    echo "Senha salva em $ARQUIVO_SENHAS"
}

# --- CODE ---
read -p "Digite uma palavra-base: " PALAVRA
read -p "Digite um número: " NUMERO

SENHA_GERADA="${PALAVRA}_${NUMERO}"

echo "Senha gerada: $SENHA_GERADA"

read -p "Deseja salvar em um arquivo? (s/n): " OPCAO

if [[ "$OPCAO" == "s" || "$OPCAO" == "S" ]]; then
    salvar_senha "$SENHA_GERADA"
fi

# --- END ---
exit 0
