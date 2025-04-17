FROM metasploitframework/metasploit-framework:latest

WORKDIR /

COPY handler.rc /handler.rc
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

