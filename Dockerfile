FROM debian:stretch

WORKDIR /build

ADD install-deps.sh /build
ADD nodesource_setup_node.sh /build
ADD build-poco.sh /build
ADD build-lokit.sh /build
ADD build-collabora.sh /build


RUN bash install-deps.sh
RUN bash build-poco.sh
RUN bash build-lokit.sh
RUN bash build-collabora.sh

