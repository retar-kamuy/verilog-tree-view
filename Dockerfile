FROM ubuntu:latest
RUN dnf -y install git \
    dnf -y --enablerepo=crb install gcc make pkgconfig autoconf automake python3-docutils libseccomp-devel jansson-devel libyaml-devel libxml2-devel \
    git clone https://github.com/universal-ctags/ctags.git \
    cd ctags \
    ./autogen.sh \
    ./configure --prefix=/usr/local \
    make \
    make install \
    cd .. & rm -rf ctags \
