FROM alpine:3

RUN apk upgrade --no-cache \
    && apk update --no-cache \
    && apk add --no-cache \
        git \
        openssh \
        shunit2 \
    && addgroup -g 1000 vscode \
    && adduser -u 1000 -G vscode --disabled-password vscode

HEALTHCHECK CMD exit 0

USER vscode
