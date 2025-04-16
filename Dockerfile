FROM kalilinux/kali-rolling

RUN apt update && \
    apt install -y metasploit-framework

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY handler.rc /handler.rc

ENTRYPOINT ["/entrypoint.sh"]
