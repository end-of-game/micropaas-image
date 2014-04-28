FROM dockerfile/java


RUN apt-get update

RUN apt-get install -y openssh-server

RUN echo mysql-server-5.5 mysql-server/root_password password 'root' | debconf-set-selections
RUN echo mysql-server-5.5 mysql-server/root_password_again password 'root' | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
RUN chown mysql:mysql /var/run/mysqld

# Install Apache Tomcat 7
ADD tar /tar
RUN tar xzf /tar/apache-tomcat-7.0.52.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-7.0.52 /opt/tomcat

RUN mkdir /var/run/sshd
RUN mkdir /deploy

ADD start-service.sh /start-service.sh
ADD deploy.sh /deploy.sh

# Define open ports
EXPOSE 3306
EXPOSE 8080
EXPOSE 22
