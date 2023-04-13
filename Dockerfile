FROM python:3.8-alpine

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN pip install -r requirements.txt

LABEL maintainer="milonas.ko@gmail.com"

CMD ["python", "rabbitmqalert/rabbitmqalert.py"]
