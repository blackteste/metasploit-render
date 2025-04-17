#!/bin/bash

echo "[*] Iniciando Metasploit com handler persistente..."
cd /opt/metasploit-framework

# Executa o handler com o arquivo de configuração
./msfconsole -r /handler.rc
