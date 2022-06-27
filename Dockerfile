FROM python:3.10.5-slim-buster as python

RUN apt-get update && apt-get install -y procps

WORKDIR /opt/varsome-api-client-python

COPY . .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir .
