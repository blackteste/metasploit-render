# Imagem base com Ruby (compatível com Metasploit)
FROM ruby:2.7

# Instala dependências do sistema
RUN apt-get update && apt-get install -y \
    wget curl git gnupg2 postgresql \
    libpq-dev libreadline-dev libssl-dev libxml2-dev libxslt1-dev \
    libsqlite3-dev sqlite3 zlib1g-dev build-essential libgmp-dev \
    autoconf libtool pkg-config python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Clona o Metasploit
RUN git clone https://github.com/rapid7/metasploit-framework /opt/metasploit-framework

# Define diretório de trabalho
WORKDIR /opt/metasploit-framework

# (Removido bundle install para evitar erro)

# Copia os arquivos personalizados
COPY entrypoint.sh /entrypoint.sh
COPY handler.rc /handler.rc

# Permissão de execução
RUN chmod +x /entrypoint.sh

# Porta usada
EXPOSE 4444

# Entrada
ENTRYPOINT ["/entrypoint.sh"]

