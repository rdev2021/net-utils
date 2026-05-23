FROM alpine:3.22.4

LABEL maintainer="Ramesh Devaraj"

RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    bind-tools \
    openssl \
    nmap \
    bash

CMD ["/bin/bash"]
