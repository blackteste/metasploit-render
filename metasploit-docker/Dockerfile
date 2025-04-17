# Imagem base com Ruby (necessário para Metasploit)
FROM ruby:2.7

# Instala dependências
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

# Instala as gems necessárias
RUN gem install bundler && bundle install

# Copia arquivos personalizados para dentro do container
COPY entrypoint.sh /entrypoint.sh
COPY handler.rc /handler.rc

# Dá permissão de execução ao script de entrada
RUN chmod +x /entrypoint.sh

# Porta usada pelo payload (ajuste se necessário)
EXPOSE 4444

# Define o script de inicialização
ENTRYPOINT ["/entrypoint.sh"]
