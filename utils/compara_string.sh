#!/usr/bin/env bash
# NOME: strings_master.sh | DESC: Compara igualdade e ordem alfabética

# --- VARIABLES ---
S1=$1; S2=$2

# --- CODE ---
[[ "$S1" == "$S2" ]] && echo "Iguais" || echo "Diferentes"

if [[ "$S1" < "$S2" ]]; then
    echo "$S1 vem antes de $S2 na ordem alfabética."
else
    echo "$S2 vem antes de $S1."
fi

# --- END ---
exit 0
