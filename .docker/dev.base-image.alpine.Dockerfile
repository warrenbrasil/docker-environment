FROM node:8.14-alpine

LABEL mantainer="Davi Busanello <itsme@davibusanello.net>"

# Set timezone
ENV locale-gen=en_US.UTF-8 \
    LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=America/Sao_Paulo \
    DEBUG=app:*

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apk update \
    # && apk add --update apline-sdk \
    && apk add --upgrade \
    && apk add bash \
    curl \
    git \
    gcc \
    g++ \
    make \
    python \
    tzdata \
    wget \
    yarn
RUN yarn global add bower --silent

WORKDIR /app
