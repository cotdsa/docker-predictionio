FROM ubuntu
MAINTAINER Matteo Sessa <webops@catchoftheday.com.au>

COPY files/ /

RUN  apt-get update \
  && apt-get install -y curl sudo
RUN /install.sh
