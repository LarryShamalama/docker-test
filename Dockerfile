FROM python:3.8.6-buster

WORKDIR ~/docker-test

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80
