FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y language-pack-ja-base language-pack-ja \
      fonts-takao-mincho fonts-takao && \
    update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja" && \
    /bin/bash -c 'source /etc/default/locale' && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8 LC_CTYPE=ja_JP.UTF-8


