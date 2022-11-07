FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install nsjail
RUN apt-get -y update && apt-get install -y \
    autoconf \
    bison \
    flex \
    gcc \
    g++ \
    git \
    libprotobuf-dev \
    libnl-route-3-dev \
    libtool \
    make \
    pkg-config \
    protobuf-compiler \
    uidmap \
    cmake \
    python3-venv \
    nginx \
    gettext \
    && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/google/nsjail.git
RUN cd /nsjail && make && mv /nsjail/nsjail /bin && rm -rf -- /nsjail

RUN apt-get update && \
apt-get install -y \
gcc uidmap netcat cmake && \
rm -rf /var/lib/apt/lists/* && \
useradd -m ctf && \
mkdir -p /home/ctf/challenge/

RUN mkdir /chroot/ && \
chown root:ctf /chroot && \
chmod 770 /chroot

WORKDIR /home/ctf/challenge/



# Copy shit in
COPY setup.sh server.py pow.py jail.cfg nsjail.sh bbbuildserver.py /
RUN git clone https://hoppscoding4u@bitbucket.org/hoppscoding4u/buck-bak.git
COPY flag.txt bbfile.txt buck-bak/
RUN mkdir /tmp/bbbuilds
COPY nginx.conf.template /etc/nginx/

RUN chown -R root:ctf . && \
chown root:ctf / /home /home/ctf/ && \
chmod 440 buck-bak/flag.txt


# venv for POW
RUN python3 -m venv /venv
RUN bash -c "source /venv/bin/activate && pip3 install ecdsa requests"

CMD ["/setup.sh"]
