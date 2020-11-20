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
  wget \
  dirmngr \
  apt-transport-https \
  lsb-release \
  ca-certificates \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*

RUN cd ~ && wget https://deb.nodesource.com/setup_12.x --no-check-certificate

RUN chmod 777 ~/setup_12.x

RUN cd ~ && ./setup_12.x

RUN apt-get update -y && apt-get install -y nodejs gcc g++ make

RUN npm config set registry http://registry.npmjs.org/ && \
   npm install -g @angular/cli@7
