FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python3.6 build-essential vim curl git zsh python3.5 && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0

ADD .vimrc /root/

RUN printf '\nexport LC_CTYPE=en_AU.UTF-8\n' >> /root/.zshrc

WORKDIR /cpp

