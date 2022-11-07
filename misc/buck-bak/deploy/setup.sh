#!/bin/bash
envsubst '$BBWEB_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx &
source /venv/bin/activate
python3 /server.py
