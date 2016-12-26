FROM openjdk:8

MAINTAINER Pete Cornish <outofcoffee@gmail.com>

RUN apt-get update && apt-get install -y php5-mcrypt python-pip

RUN pip install awscli --ignore-installed six

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
