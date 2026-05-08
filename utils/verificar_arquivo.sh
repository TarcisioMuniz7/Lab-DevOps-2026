#!/usr/bin/env bash
# NOME: verifica_arquivo.sh | DESC: Valida existência de arquivos/pastas

# --- VARIABLES ---
ALVO=$1

# --- CODE ---
if [ -f "$ALVO" ]; then echo "É um arquivo regular."
elif [ -d "$ALVO" ]; then echo "É um diretório."
else echo "O arquivo/diretório não existe."; fi

# --- END ---
exit 0
