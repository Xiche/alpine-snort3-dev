FROM alpine:3.12
MAINTAINER Michael Altizer <mialtize@cisco.com>

# Add testing repo for hwloc
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN \
# Update the image's pre-installed packages
apk update && \
apk upgrade && \
# Install the Snort build dependencies
apk add \
    autoconf \
    automake \
    build-base \
    cmake \
    flatbuffers-dev \
    hwloc-dev@testing \
    libdnet-dev \
    libmnl-dev \
    libpcap-dev \
    libtirpc-dev \
    libtool \
    libunwind-dev \
    luajit-dev \
    openssl-dev \
    pcre-dev \
    util-linux-dev \
    xz-dev \
# Install the Snort developer requirements
    cppcheck \
    cpputest \
    curl \
    gdb \
    git \
    vim
# Install programs necessary for documentation generation
#     asciidoc w3m \

