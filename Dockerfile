ARG NODE_VERSION=lts
FROM node:${NODE_VERSION}-alpine

WORKDIR /work

RUN apk --no-cache update --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main/ && \
    apk --no-cache add --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main/ \
        ca-certificates \
        docker \
        groff \
        less \
        bash \
        make \
        jq \
        curl \
        wget \
        g++ \
        zip \
        git \
        libssl3 \
        openssh && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

RUN apk --no-cache update --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ && \
    apk --no-cache add --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    python3-dev \
    python3 \
    py3-pip \
    aws-cli && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/sh", "-c" ]
