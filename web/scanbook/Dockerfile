FROM python:3.10-rc-bullseye

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y libzbar0
RUN python -m pip install --no-cache-dir --upgrade -r requirements.txt
RUN mkdir static/codes

EXPOSE 5000

CMD gunicorn --bind 0.0.0.0:5000 server:app