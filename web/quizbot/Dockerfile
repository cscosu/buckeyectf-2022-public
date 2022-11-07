FROM python:3.9.1

WORKDIR /usr/src/app

COPY requirements.txt bot.py .env ./
RUN pip install --no-cache-dir -r requirements.txt && \
rm requirements.txt

ENV PYTHONUNBUFFERED=1

# Disable asserts
CMD ["python", "-O", "./bot.py"]
