FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y gcc libssl-dev libcrypto++-dev python3 socat


WORKDIR /app
COPY minishell.c /app
COPY log.c /app


RUN gcc -o minishell minishell.c -lssl -lcrypto -g -fno-stack-protector
RUN gcc -o log log.c

RUN mkdir /app/logs /home/ctf

COPY flag.txt /home/ctf/flag.txt

EXPOSE 3001
CMD socat TCP-LISTEN:3001,reuseaddr,fork EXEC:/app/minishell
