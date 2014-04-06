export TOMCAT_HOME=/opt/tomcat
export WAR_NAME=$1
export WAR_PATH=/deploy/$1

sh $TOMCAT_HOME/bin/catalina.sh stop
sleep 1

rm -rf $TOMCAT_HOME/webapps/${WAR_NAME%.*ar}
rm -rf $TOMCAT_HOME/work/Catalina/localhost/_

cp $WAR_PATH $TOMCAT_HOME/webapps/$1

sh $TOMCAT_HOME/bin/catalina.sh start
