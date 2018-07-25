FROM debian:stretch

WORKDIR /build

ADD install-deps.sh /build
ADD build-poco.sh /build
ADD build-collabora.sh /build

RUN bash install-deps.sh
RUN bash build-poco.sh.sh
RUN bash build-collabora.sh

