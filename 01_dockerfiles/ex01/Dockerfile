FROM debian:latest
RUN apt-get update && apt-get install -y wget \
    && apt-get upgrade \
    && wget http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz \
    && useradd -ms /bin/bash teamspeak \
    && tar -zxvf teamspeak3-server_linux-amd64-3.0.11.2.tar.gz \
    && rm teamspeak3-server_linux-amd64-3.0.11.2.tar.gz \
    && mv teamspeak3-server_linux-amd64 /home/teamspeak
USER teamspeak
WORKDIR /home/teamspeak/teamspeak3-server_linux-amd64
ADD ts3server.ini .
EXPOSE 9987
ENTRYPOINT ["sh", "ts3server_minimal_runscript.sh", "inifile=ts3server.ini"]

# TEST
# apt-get install telnet
# telnet 0.0.0.0 10011
# login serveradmin password
