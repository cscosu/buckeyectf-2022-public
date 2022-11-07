# libc-2.31
FROM ubuntu:22.04

# Install nsjail

ENV DEBIAN_FRONTEND=noninteractive

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
&& \
rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/google/nsjail --branch 3.1 && \
cd nsjail && \
make -j8 && \
mv nsjail /bin && \
cd / && \
rm -rf nsjail

RUN useradd -m ctf && \
mkdir -p /home/ctf/app/ && \
mkdir /chroot/ && \
chown root:ctf /chroot && \
chmod 770 /chroot

WORKDIR /home/ctf/app

COPY chall flag.txt jail.cfg run.sh ./
RUN mv jail.cfg run.sh / && \
chown -R root:ctf . && \
chmod 550 . && \
chmod 550 /home/ctf && \
chown -R root:ctf /home/ctf/ && \
chown -R root:ctf /home/ctf/app && \
chmod 550 chall

CMD /run.sh
