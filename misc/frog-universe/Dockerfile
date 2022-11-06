FROM python:3.10-rc-bullseye

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y socat
RUN python -m pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 1024

CMD ./run.sh