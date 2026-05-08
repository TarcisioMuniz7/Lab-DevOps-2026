#!/usr/bin/env bash

# ------------------------------------------------------------------------- #
# NOME          : calcula_idade.sh
# DESCRIÇÃO     : Calcula idade aproximada.
# ------------------------------------------------------------------------- #

# --- VARIABLES ---
ANO_SISTEMA=$(date +%Y)

# --- FUNCTIONS ---
# (Sem funções específicas para este script simples)

# --- CODE ---
read -p "Nome: " NOME
read -p "Ano de nascimento: " ANO_NASC

# Cálculo simples: ano atual - ano nascimento
IDADE=$((ANO_SISTEMA - ANO_NASC))

echo "------------------------------"
echo "Nome: $NOME"
echo "Ano de Nascimento: $ANO_NASC"
echo "Idade Aproximada: $IDADE anos"

# --- END ---
exit 0
