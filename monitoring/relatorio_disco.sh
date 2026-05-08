#!/usr/bin/env bash
# NOME: relatorio_disco.sh | DESC: Monitoramento de espaço e /home

# --- CODE ---
echo "Espaço livre nos discos:"
df -h

echo "Tamanho do diretório /home:"
du -sh /home

# --- END ---
exit 0
