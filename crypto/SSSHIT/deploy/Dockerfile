FROM python:3-slim

RUN apt-get update && \
apt-get install -y socat && \
pip3 install --no-cache-dir pycryptodome

WORKDIR /opt/app
COPY chall.py ./
CMD socat -d -d -s TCP-LISTEN:1024,reuseaddr,fork EXEC:'timeout 30 python -u /opt/app/chall.py'
