
export TOMCAT_HOME=/opt/tomcat
export WAR_FILE=/project.war

sh $TOMCAT_HOME/bin/catalina.sh stop

rm $TOMCAT_HOME/webapps/ROOT.war
rm -rf $TOMCAT_HOME/webapps/ROOT $TOMCAT_HOME/work/Catalina/localhost/_

cp $WAR_FILE $TOMCAT_HOME/webapps/ROOT.war

sh $TOMCAT_HOME/bin/catalina.sh start
