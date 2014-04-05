#!/bin/bash

	export TOMCAT_HOME=/opt/tomcat

	chpasswd && echo "root:root" | chpasswd

	/usr/sbin/sshd
	/usr/sbin/mysqld &

# Database creation
        sleep 3 && mysql -u root --password=root -e 'CREATE DATABASE IF NOT EXISTS `'$1'`;ALTER DATABASE `'$1'` charset=utf8;'

        /bin/sh $TOMCAT_HOME/bin/catalina.sh start
        tail -f $TOMCAT_HOME/logs/catalina.out
