FROM python:2.7

ENV WORKDIR  /pyflame/
WORKDIR $WORKDIR
RUN apt-get update
RUN apt-get install autoconf automake autotools-dev g++ libtool pkg-config -y && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/uber/pyflame.git .
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
RUN rm -rf $WORKDIR
COPY flamegraph.pl /usr/local/bin
