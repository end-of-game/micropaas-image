FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y vim openssh-server

# Install Java
RUN apt-get install openjdk-7-jdk 

# Install Mysql
RUN echo mysql-server-5.5 mysql-server/root_password password 'root' | debconf-set-selections
RUN echo mysql-server-5.5 mysql-server/root_password_again password 'root' | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
RUN chown mysql:mysql /var/run/mysqld

# Install Apache Tomcat 7
ADD tar /tar
RUN tar xzf /tar/apache-tomcat-7.0.52.tar.gz -C /opt/tomcat

ADD start-service.sh /start-service.sh
ADD deploy.sh /deploy.sh

RUN mkdir /var/run/sshd
RUN mkdir /deploy

# Define open ports
EXPOSE 3306
EXPOSE 8080
EXPOSE 22

