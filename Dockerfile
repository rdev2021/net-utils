FROM alpine:latest

LABEL org.opencontainers.image.source https://github.com/rdev2021/net-utils

RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    bind-tools \
    openssl \
    bash

CMD ["/bin/bash"]