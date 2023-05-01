FROM ubuntu:latest

RUN apt update && apt install -y tini netatalk && apt -y clean && rm -rf /var/lib/apt/lists/*

EXPOSE 548

CMD ["/usr/bin/tini", "--", "/usr/sbin/netatalk", "-d"]

