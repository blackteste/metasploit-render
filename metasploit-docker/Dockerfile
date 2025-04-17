FROM metasploitframework/metasploit-framework:latest

WORKDIR /

COPY entrypoint.sh /entrypoint.sh
COPY handler.rc /handler.rc

RUN chmod +x /entrypoint.sh

EXPOSE 4444

ENTRYPOINT ["/entrypoint.sh"]

