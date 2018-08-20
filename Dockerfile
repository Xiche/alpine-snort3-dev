FROM alpine:latest
MAINTAINER Michael Altizer <mialtize@cisco.com>

# Add testing repo to sources for hwloc, flatbuffers, and lcov
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN \
# Update the image's pre-installed packages
apk update && \
apk upgrade && \
# Install the Snort build dependencies
apk add \
    bison \
    build-base \
    cmake \
    flatbuffers-dev@testing \
    flex \
    hwloc-dev@testing \
    libdnet-dev \
    libpcap-dev \
    libtirpc-dev \
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
    lcov@testing \
    vim \
# Install programs necessary for documentation generation
#     asciidoc w3m \

