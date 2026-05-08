#!/usr/bin/env bash
# NOME: calculadora.sh | USO: ./calculadora.sh 10 + 5

# --- VARIABLES ---
N1=$1; OP=$2; N2=$3

# --- CODE ---
case $OP in
    +) RES=$((N1 + N2)) ;;
    -) RES=$((N1 - N2)) ;;
    \*) RES=$((N1 * N2)) ;; # Precisa escapar o asterisco
    /) RES=$((N1 / N2)) ;;
    %) RES=$((N1 % N2)) ;;
    *) echo "Operador inválido"; exit 1 ;;
esac
echo "Resultado: $RES"

# --- END ---
exit 0
