#!/usr/bin/env bash
# NOME: comparar.sh 
# DESC: Compara dois números 
# AUTOR: Tarcísio Muniz 
# USO: ./comparar.sh n1 n2

# --- VARIABLES ---
NUM1=$1; NUM2=$2; LOG="logs/atividades.log"

# --- FUNCTIONS ---
log_msg() { echo "[$(date +%T)] $1" >> "$LOG"; }

# --- CODE ---
log_msg "Executando comparar.sh com $NUM1 e $NUM2"
if [ $NUM1 -gt $NUM2 ]; then echo "$NUM1 é maior que $NUM2"
elif [ $NUM1 -lt $NUM2 ]; then echo "$NUM1 é menor que $NUM2"
else echo "Os números são iguais"; fi

# --- END ---
exit 0
