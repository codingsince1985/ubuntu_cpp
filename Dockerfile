FROM ubuntu:16.04

RUN apt-get update && apt-get install -y build-essential vim curl git zsh python3.5 && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0

ADD .vimrc /root/

RUN ln -s /usr/bin/python3.5 /usr/bin/python

WORKDIR /cpp
