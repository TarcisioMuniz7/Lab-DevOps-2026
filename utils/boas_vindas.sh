#!/usr/bin/env bash

# ------------------------------------------------------------------------- #
# NOME          : boas_vindas.sh
# DESCRIÇÃO     : Exibe boas-vindas e informações do ambiente.
# AUTOR         : Tarcísio Muniz
# USO           : ./boas_vindas.sh
# VERSÃO        : 1.0.0
# ------------------------------------------------------------------------- #

# --- VARIABLES ---
LOG_FILE="logs/atividades_$(date +%Y%m%d).log"
HORA_ATUAL=$(date "+%H:%M:%S")
DATA_ATUAL=$(date "+%d/%m/%Y")

# --- FUNCTIONS ---
log_it() {
    echo "[$(date +%T)] $1" >> "$LOG_FILE"
}

# --- CODE ---
echo "Bem-vindo ao sistema de Laboratório!"

read -p "Qual seu nome? " NOME
read -p "Qual a disciplina? " DISCIPLINA
read -p "Qual o semestre atual? " SEMESTRE

echo ""
echo "Olá, $NOME! Bem-vindo à disciplina $DISCIPLINA no $SEMESTRE semestre."
echo "Data: $DATA_ATUAL | Hora: $HORA_ATUAL"
echo "Seu diretório home é: $HOME"
echo "Usuário atual: $USER"
echo "Diretório atual: $(pwd)"

log_it "Script de boas-vindas executado por $NOME"

# --- END ---
exit 0
