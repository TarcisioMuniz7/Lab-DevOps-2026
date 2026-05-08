#!/usr/bin/env bash
# NOME: busca_logs.sh | DESC: Busca arquivos .log em /var/log

# --- CODE ---
# Correção: alterado de -type d para -type f
find /var/log -type f -name "*.log"

# --- END ---
exit 0
