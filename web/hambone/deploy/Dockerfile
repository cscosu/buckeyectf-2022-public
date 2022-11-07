FROM python:3.9-bullseye
WORKDIR /app

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN apt-get update
RUN pip install --no-cache-dir --upgrade -r requirements.txt


EXPOSE 5000

CMD gunicorn --bind 0.0.0.0:5000 server:app
