FROM ubuntu:20.04

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
python3 python3-pip \
&& \
rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/google/nsjail --branch 3.1 && \
cd nsjail && \
make -j8 && \
mv nsjail /bin && \
cd / && \
rm -rf nsjail

RUN useradd -m ctf && \
mkdir -p /home/ctf/challenge/ && \
mkdir /chroot/ && \
chown root:ctf /chroot && \
chmod 770 /chroot

WORKDIR /home/ctf/app
COPY etokenizer ./etokenizer
COPY tokenstokens.c requirements.txt interact.py flag.txt Makefile jail.cfg run.sh ./

RUN apt-get install -y python3 python3-pip
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
RUN rm -rf /var/lib/apt/lists/*

RUN mv jail.cfg run.sh / && \
make && \
chown -R root:ctf . && \
chmod 440 flag.txt && \
chmod 550 tokenstokens && \
rm tokenstokens.c Makefile

ENV TRANSFORMERS_CACHE=/tmp
ENV TRANSFORMERS_VERBOSITY=error
ENV TOKENIZERS_PARALLELISM=true

CMD /run.sh
