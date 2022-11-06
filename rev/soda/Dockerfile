FROM ubuntu:20.04

# Install java + socat

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y \
socat \
default-jre \
default-jdk \
&& \
rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY * ./

RUN ./build.sh && \
rm build.sh soda.java && \
chmod 440 flag.txt

EXPOSE 1024

CMD ./run.sh