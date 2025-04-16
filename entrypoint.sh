#!/bin/bash

# Start PostgreSQL
/etc/init.d/postgresql start

# Espera um pouco para o banco iniciar
sleep 5

# Inicia o banco de dados do Metasploit
msfdb init

# Inicia o console do Metasploit com o handler
msfconsole -r handler.rc

