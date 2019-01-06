FROM python:3.7-alpine
MAINTAINER Nejc Ribic

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app/app
WORKDIR /app/app
COPY ./app /app/app

RUN adduser -D user
USER user
