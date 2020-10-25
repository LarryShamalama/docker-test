FROM python:3.8.6-buster

WORKDIR ~/docker-test

COPY requirements.txt ./
COPY app.py ./
COPY static ./
COPY index.html ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
