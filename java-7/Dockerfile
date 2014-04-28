FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

RUN apt-get install -y vim openssh-server
RUN mkdir /var/run/sshd
RUN mkdir /deploy

# Install Java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer
