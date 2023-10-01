ARG NODE_VERSION=lts
FROM node:${NODE_VERSION}-alpine

WORKDIR /work

RUN apk --no-cache update && \
    apk --no-cache add \
        ca-certificates \
        python3-dev \
        python3 \
        py-pip \
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
        openssh && \
    pip --no-cache-dir install awscli virtualenv && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/sh", "-c" ]
