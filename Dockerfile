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
        openssh \
        python3-dev \
        python3 \
        py3-pip \
        aws-cli \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/*

RUN rm -fr \
  /usr/bin/aws_completer \
  /usr/lib/python*/site-packages/awscli/data/ac.index \
  /usr/lib/python*/site-packages/awscli/examples \
  && find /usr/lib/python* -name "completions-1*.json" -delete

ENTRYPOINT [ "/bin/sh", "-c" ]
