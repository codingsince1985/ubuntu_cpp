FROM ubuntu:18.04

RUN apt-get update && apt-get install -y build-essential vim curl git zsh python3.7 && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0

ADD .vimrc /root/

RUN ln -s /usr/bin/python3.7 /usr/bin/python

RUN sed -i 's/"robbyrussell"/"af-magic"/g' /root/.zshrc

WORKDIR /cpp
