FROM alpine:3.22.0

LABEL maintainer="Ramesh Devaraj"

RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    bind-tools \
    openssl \
    bash

CMD ["/bin/bash"]