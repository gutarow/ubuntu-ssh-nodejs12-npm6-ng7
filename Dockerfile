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
  wget \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN wget -qO- https://deb.nodesource.com/setup_12.x | bash - && /
  apt-get -y install nodejs \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*
 
 RUN npm config set registry http://registry.npmjs.org/ && \
   npm install -g @angular/cli@7
