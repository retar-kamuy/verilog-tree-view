FROM ubuntu:latest
RUN apt -y update \
    apt -y install git \
    apt -y install gcc make pkg-config autoconf automake python3-docutils libseccomp-dev libjansson-dev libyaml-dev libxml2-dev \
    git clone https://github.com/universal-ctags/ctags.git \
    cd ctags \
    ./autogen.sh \
    ./configure --prefix=/usr/local \
    make \
    make install \
    cd .. & rm -rf ctags \
