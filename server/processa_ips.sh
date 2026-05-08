#!/usr/bin/env bash
# NOME: processa_ips.sh | DESC: Extrai IPs do syslog e gera relatório
# AUTOR: Tarcísio Muniz

# --- VARIABLES ---
LOG_ORIGEM="/var/log/syslog"
RELATORIO="logs/relatorio_ips_$(date +%Y%m%d).txt"
REGEX_IP="[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}"

# --- FUNCTIONS ---
extrai_ips() {
    grep -o "$REGEX_IP" "$LOG_ORIGEM" > "$RELATORIO"
}

# --- CODE ---
echo "Iniciando extração de IPs..."
extrai_ips

if [ -f "$RELATORIO" ]; then
    echo "Relatório gerado com sucesso: $RELATORIO"
else
    echo "Erro ao gerar relatório."
fi

# --- END ---
exit 0
