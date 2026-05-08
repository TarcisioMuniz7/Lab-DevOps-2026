#!/usr/bin/env bash
# NOME: par_impar.sh | DESC: Verifica paridade | AUTOR: Tarcísio Muniz

# --- VARIABLES ---
NUM=$1

# --- CODE ---
if (( $NUM % 2 == 0 )); then
    echo "O número $NUM é PAR."
else
    echo "O número $NUM é ÍMPAR."
fi

# --- END ---
exit 0
