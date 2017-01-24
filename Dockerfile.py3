FROM python:3.5

ENV WORKDIR  /pyflame/
WORKDIR $WORKDIR
RUN apt-get update
RUN apt-get install autoconf automake autotools-dev g++ libtool pkg-config -y

RUN git clone https://github.com/uber/pyflame.git .
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
