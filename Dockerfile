FROM ubuntu:bionic
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive


# Install ssh
RUN apt-get update -y && apt-get install -y \
  curl \
  git-core \
  gzip \
  openssh-client \
  unzip \
  sudo \
  dirmngr \
  apt-transport-https \
  lsb-release \
  ca-certificates \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && /
  apt -y install nodejs \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
 
 RUN npm config set registry http://registry.npmjs.org/ && \
   npm install -g @angular/cli@7
