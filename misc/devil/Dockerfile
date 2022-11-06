FROM python:3.10-rc-bullseye

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y socat
RUN rm solv.py

EXPOSE 1024

ENV SUCCESS_VALUE=104.61

CMD ./run.sh