FROM ubuntu:16.04

RUN apt-get update && apt-get install -y build-essential vim curl git zsh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0

ADD .vimrc /root/

WORKDIR /cpp

