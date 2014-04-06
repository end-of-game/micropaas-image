export TOMCAT_HOME=/opt/tomcat
export WAR_FILE=/deploy/$1

sh $TOMCAT_HOME/bin/catalina.sh stop
sleep 5

rm -rf $TOMCAT_HOME/webapps/$1*
rm -rf $TOMCAT_HOME/work/Catalina/localhost/_

cp $WAR_FILE $TOMCAT_HOME/webapps/$1

sh $TOMCAT_HOME/bin/catalina.sh start
