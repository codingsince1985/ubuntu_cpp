FROM ubuntu:16.04

RUN apt-get update && apt-get install -y build-essential vim

ADD .vimrc /root/

WORKDIR /cpp

