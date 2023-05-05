FROM ubuntu:latest
LABEL authors="Diamons"

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    zsh \
    wget

# Install oh-my-zsh
RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Update pip and install python packages
RUN pip3 install --upgrade pip && \
    pip3 install tk && \
    pip3 install pygame

RUN echo "alias python=python3" >> ~/.zshrc

WORKDIR /usr/app
