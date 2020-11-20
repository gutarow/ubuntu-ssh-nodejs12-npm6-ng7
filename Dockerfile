FROM ubuntu:focal
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive


# Install ssh
RUN apt-get update -y && apt-get install -y \
  curl \
  git-core \
  gzip \
  openssh-client \
  unzip \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN curl -sL https://deb.nodesource.com/setup_12.x -o ~/nodesource_setup.sh && \
  chmod 777 ~/nodesource_setup.sh && \
  ~/nodesource_setup.sh

#RUN npm config set registry http://registry.npmjs.org/ && \
#   npm install -g @angular/cli@7
