FROM debian:latest
WORKDIR /root
RUN apt-get update && apt-get install -y wget && \
    wget -O - https://downloads.mongodb.com/compass/mongosh-0.5.2-linux.tgz | tar -C /usr/local/bin -xzf -
ENTRYPOINT ["mongosh"]
