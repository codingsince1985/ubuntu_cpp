FROM ubuntu:22.04

ARG python=python3.10

RUN apt-get update && apt-get install -y build-essential vim curl git zsh $python && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0

ADD .vimrc /root/

RUN ln -s /usr/bin/$python /usr/bin/python

RUN sed -i 's/"robbyrussell"/"af-magic"/g' /root/.zshrc

WORKDIR /cpp
