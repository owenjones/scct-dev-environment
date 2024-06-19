ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update
RUN apt-get install -y \
  git \
  curl \
  wget \
  iputils-ping \
  python3.12 \
  python3-pip \
  python3-virtualenv \
  python-is-python3

ARG UID
ARG GID
RUN userdel -fr ubuntu
RUN groupadd -g ${GID} scct
RUN useradd -g ${GID} -u ${UID} -m -s /bin/bash scct

COPY post-start.sh /init/post-start.sh
RUN chmod +x /init/post-start.sh

USER scct