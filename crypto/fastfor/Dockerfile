FROM python:3.10-rc-bullseye

RUN python -m pip install --upgrade pip

COPY . /app
WORKDIR /app
RUN python -m pip install --no-cache-dir --upgrade -r requirements.txt && \
rm sol.py

EXPOSE 5000

ENV FLAG=buckeye{D33p_w0Rk_N07_WhY_574ND4RD_d3V}

CMD gunicorn --bind 0.0.0.0:5000 server:app