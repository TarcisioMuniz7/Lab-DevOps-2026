#!/usr/bin/env bash
# NOME: filtra_log.sh | DESC: Filtra código de transação no apache.log

# --- VARIABLES ---
ARQUIVO="apache.log"
CODIGO="4786228.66"

# --- CODE ---
# Completando a lacuna do exercício:
cat "$ARQUIVO" | grep "$CODIGO" | head -n 5

# --- END ---
exit 0
