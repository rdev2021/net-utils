ARG TAG=latest
FROM alpine:${TAG}

LABEL maintainer="Ramesh Devaraj"

RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    bind-tools \
    openssl \
    nmap \
    bash

CMD ["/bin/bash"]
