FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl unzip tar docker.io && \
    curl -L https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64 -o /usr/local/bin/wings && \
    chmod +x /usr/local/bin/wings

CMD ["wings"]
