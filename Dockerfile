FROM alpine:latest

RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    bind-tools \
    openssl \
    bash

CMD ["/bin/bash"]