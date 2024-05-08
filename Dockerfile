FROM ubuntu:latest AS builder
WORKDIR /root/
RUN apt -y update \
    && apt -y install git \
    && apt -y install clang make pkg-config autoconf automake python3-docutils libseccomp-dev libjansson-dev libyaml-dev libxml2-dev \
    && apt clean \
    && git clone https://github.com/universal-ctags/ctags.git \
    && cd ctags \
    && ./autogen.sh \
    && ./configure \
    && make -j$(nproc) \
    && make install \
    && cd .. \
    && rm -rf ctags
