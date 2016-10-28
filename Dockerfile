FROM ubuntu
MAINTAINER Matteo Sessa <webops@catchoftheday.com.au>

ENV PIO_VERSION 0.9.6-spark1.5.2
ENV SPARK_VERSION 1.5.2

ENV PIO_HOME /PredictionIO-${PIO_VERSION}
ENV PATH=${PIO_HOME}/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN apt-get update \
    && apt-get install -y --auto-remove --no-install-recommends curl openjdk-8-jdk libgfortran3 python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://s3-ap-southeast-2.amazonaws.com/cotdsa-public/PredictionIO-${PIO_VERSION}.tar.gz \
    && tar -xvzf PredictionIO-${PIO_VERSION}.tar.gz -C / && mkdir -p ${PIO_HOME}/vendors \
    && rm PredictionIO-${PIO_VERSION}.tar.gz

RUN curl -O http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz \
    && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop2.6.tgz -C ${PIO_HOME}/vendors \
    && rm spark-${SPARK_VERSION}-bin-hadoop2.6.tgz

#triggers fetching the complete sbt environment
RUN ${PIO_HOME}/sbt/sbt -batch

#COPY files/pio-env.sh ${PIO_HOME}/conf/pio-env.sh
