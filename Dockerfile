FROM ubuntu

ARG TZ=Europe/Madrid
ENV TZ=${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -yq --no-install-recommends \
    apt-utils \
    wget \
    curl \
    git \
    nano \
    tree \
    net-tools \
    iputils-ping \
    sudo \
    openssh-server \
    openssh-client \
    unzip \
    dos2unix \
    expect \
    python3 \
    software-properties-common