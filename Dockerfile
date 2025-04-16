FROM kalilinux/kali-rolling

RUN apt update && \
    apt install -y metasploit-framework && \
    chmod +x /entrypoint.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
