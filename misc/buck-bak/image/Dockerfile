FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y \
    gcc \
    git \
    make \
    socat \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY buck-bak/ buck-bak/
WORKDIR buck-bak
RUN make all
COPY test.sh test.sh

CMD socat tcp-l:5000,reuseaddr,fork EXEC:"./build/buck-bak",pty,stderr
