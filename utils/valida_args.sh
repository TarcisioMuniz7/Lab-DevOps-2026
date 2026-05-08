#!/usr/bin/env bash
# NOME: valida_args.sh | DESC: Valida quantidade de argumentos

# --- CODE ---
if [ $# -ne 3 ]; then
    echo "ERRO: Você deve informar exatamente 3 argumentos. (Enviados: $#)"
    exit 1
fi
echo "Sucesso: 3 argumentos recebidos."

# --- END ---
exit 0
